package com.devops.user;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.devops.db.DatabaseConnection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Connection;
import java.sql.SQLException;

@WebServlet("/AddUser")
public class AddUser extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private String firstname;
	private String lastname;
	private String email;
	private String username;
	private String cpassword;
	private String ngaysinh;
	private String numberphone;
	
	private String status = "A";
	private String position = "U";

	private Connection connection;
	private PreparedStatement ps;
	private ResultSet rs = null;


	public AddUser() {
		super();

	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {

		firstname   = request.getParameter("firstname");
		lastname    = request.getParameter("lastname");
		username    = request.getParameter("username");
		cpassword   = request.getParameter("cpassword");
		ngaysinh    = request.getParameter("ngaysinh");
		email       = request.getParameter("email");
		numberphone = request.getParameter("numberphone");
		
		

		if (firstname == "" && lastname == ""  && username == ""
				&& cpassword == "" && ngaysinh == ""&& email == "" && numberphone == "") {

			response.sendRedirect("unsuccess.jsp");

		} else {
			// Add new user

			try {
				connection = DatabaseConnection.getConnection();
				ps = connection
						.prepareStatement("insert into users(firstname,lastname,username,cpassword,ngaysinh,email,numberphone,status,position) values (?, ?, ?, ?, ?, ?, ?, ?, ? )");

				ps.setString(1, firstname);
				ps.setString(2, lastname);
				ps.setString(3, username);
				ps.setString(4, cpassword);
				ps.setString(5, ngaysinh);
				ps.setString(6, email);
				ps.setString(7, numberphone);
				ps.setString(8, status);
				ps.setString(9, position);


				int i = ps.executeUpdate();

				int luid = 0;

				// add calendar default setting
				ps = connection
						.prepareStatement("SELECT uid FROM users ORDER BY uid DESC LIMIT 1");

				rs = ps.executeQuery();
				if (rs.next()) {

					luid = rs.getInt("uid");
				}

				int stuid = luid;
				String stpdf = "pdfA";
				String stmic = "mcA";
				String stag = "agA";

				ps = connection
						.prepareStatement("insert into setting(uid,pdf,minc,agenda) values (?,?, ?, ?)");

				ps.setInt(1, stuid);
				ps.setString(2, stpdf);
				ps.setString(3, stmic);
				ps.setString(4, stag);
				

				int x = ps.executeUpdate();

				if (i != 0 && x != 0) {
					response.sendRedirect("success.jsp");
				} else {
					response.sendRedirect("unsuccess.jsp");
				}

			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				if (connection != null) {
					try {
						connection.close();
					} catch (SQLException e) {
						e.printStackTrace();
					}
				}
				if (ps != null) {
					try {
						ps.close();
					} catch (SQLException e) {
						e.printStackTrace();
					}
				}
			}
		}

	}

}
