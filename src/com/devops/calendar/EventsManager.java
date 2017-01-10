package com.devops.calendar;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpSession;

import javax.servlet.http.HttpServletRequest;


import com.devops.db.DatabaseConnection;
import com.dhtmlx.planner.DHXEv;
import com.dhtmlx.planner.DHXEvent;
import com.dhtmlx.planner.DHXEventRec;
import com.dhtmlx.planner.DHXEventsManager;
import com.dhtmlx.planner.DHXStatus;
import com.mysql.jdbc.Statement;

public class EventsManager extends DHXEventsManager {
	HttpServletRequest request;

	public EventsManager(HttpServletRequest request) {

		super(request);
		this.request = request;
	}

	public Iterable getEvents() {
		DHXEventsManager.date_format = "yyyy-MM-dd HH:mm:ss";
		List evs = new ArrayList();
		try {
			java.sql.Connection conn = DatabaseConnection.getConnection();
			java.sql.Statement statement = conn.createStatement();

			HttpSession session = request.getSession(true);
			int user_id = Integer.parseInt(session.getAttribute("ssuid")
					.toString());
			
			

			String query = "SELECT event_id, event_name, start_date, end_date, rec_type, event_length, event_pid, color FROM events WHERE uid= "+ user_id +" ";

			String room = getRequest().getParameter("departments");
			if (room != null) {
				query += "WHERE room_id='" + room + "'";
			}

			ResultSet resultset = statement.executeQuery(query);

			while (resultset.next()) {
			
				EventRec e = new EventRec();

			

				e.setId(Integer.parseInt(resultset.getString("event_id")));
				e.setText(resultset.getString("event_name"));
				e.setStart_date(resultset.getString("start_date"));
				e.setEnd_date(resultset.getString("end_date"));
				e.setRec_type(resultset.getString("rec_type"));
				e.setEvent_length(Integer.parseInt(resultset
						.getString("event_length")));
				e.setEvent_pid(Integer.parseInt(resultset
						.getString("event_pid")));
				e.setColor(resultset.getString("color"));
		
				evs.add(e);
			}
			conn.close();
		} catch (SQLException e1) {
			e1.printStackTrace();
		}
		DHXEventsManager.date_format = "MM/dd/yyyy HH:mm";

		return evs;
	}
	

	@Override
	public DHXStatus saveEvent(DHXEv event, DHXStatus status) {
		java.sql.Connection conn = DatabaseConnection.getConnection();
		java.sql.PreparedStatement ps = null;
		java.sql.ResultSet result = null;
		EventRec e = (EventRec) event;
		
		HttpSession session = request.getSession(true);
		int user_id = Integer.parseInt(session.getAttribute("ssuid")
				.toString());
		
		try {
			String query = null;
			String start_date = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss")
					.format(e.getStart_date());
			String end_date = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss")
					.format(e.getEnd_date());

			if (status == DHXStatus.UPDATE) {
				query = "UPDATE events SET event_name=?, start_date=?, end_date=?, rec_type=?, event_length=?, event_pid=?, color=? WHERE event_id=? ";
				ps = conn.prepareStatement(query,
						Statement.RETURN_GENERATED_KEYS);
				ps.setString(1, e.getText());
				ps.setString(2, start_date);
				ps.setString(3, end_date);
				ps.setString(4, e.getRec_type());
				ps.setInt(5, e.getEvent_length());
				ps.setInt(6, e.getEvent_pid());
				ps.setString(7, e.getColor());
				ps.setInt(8, e.getId());
			
				
			} else if (status == DHXStatus.INSERT) {
				query = "INSERT INTO events (event_id, event_name, start_date, end_date, rec_type, event_length, event_pid,uid,color) VALUES (null, ?, ?, ?, ?, ?, ?,?,?)  ";
				ps = conn.prepareStatement(query,
						Statement.RETURN_GENERATED_KEYS);
				ps.setString(1, e.getText());
				ps.setString(2, start_date);
				ps.setString(3, end_date);
				ps.setString(4, e.getRec_type());
				ps.setInt(5, e.getEvent_length());
				ps.setInt(6, e.getEvent_pid());
				 ps.setInt(7, user_id);
				 ps.setString(8, e.getColor());
			} else if (status == DHXStatus.DELETE) {
				query = "DELETE FROM events WHERE event_id=?  LIMIT 1";
				ps = conn.prepareStatement(query,
						Statement.RETURN_GENERATED_KEYS);
				ps.setInt(1, event.getId());
			}
			if (ps != null) {
				ps.executeUpdate();
				result = ps.getGeneratedKeys();
				if (result.next()) {
					event.setId(result.getInt(1));
				}
			}

		
			if (status == DHXStatus.DELETE) {
				query = "DELETE FROM events WHERE event_pid=? LIMIT 1";
				ps = conn.prepareStatement(query);
				ps.setInt(1, event.getId());
				ps.executeUpdate();
			}

		} catch (SQLException e1) {
			e1.printStackTrace();
		} finally {
			if (result != null)
				try {
					result.close();
				} catch (SQLException e1) {
				}
			if (ps != null)
				try {
					ps.close();
				} catch (SQLException e1) {
				}
			if (conn != null)
				try {
					conn.close();
				} catch (SQLException e1) {
				}
		}

		return status;
	}

	@Override
	public DHXEv createEvent(String id, DHXStatus status) {
		return new EventRec();
	}

}
