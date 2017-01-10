package com.devops.user;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.devops.db.DatabaseConnection;


/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		

		String un = request.getParameter("username");
		String pw = request.getParameter("userpass");

		String firstname = "";
		String userposition = "";
		String userststus = "";
		String username   =   "";
		int uid = 999;

		Connection connection = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
	
		try {
			connection = DatabaseConnection.getConnection();
			ps = connection
					.prepareStatement("select * from users where username=? and cpassword=?");
			ps.setString(1, un);
			ps.setString(2, pw);
			rs = ps.executeQuery();
			if (rs.next()) {

				firstname = rs.getString("firstname");
				username=rs.getString("username");
				userposition = rs.getString("position");
				userststus = rs.getString("status");
				uid = rs.getInt("uid");
			
				
			} else {
				 response.sendRedirect("index.jsp?id=wrong");
			}
			
			
			if (userststus.equals("A")) {
				String sessionactivekey = "GH@45#";
				HttpSession session = request.getSession();
				session.setAttribute("skey", sessionactivekey);
				session.setAttribute("ssname", firstname);
				session.setAttribute("ssuser", username);
				session.setAttribute("ssup", userposition);
				session.setAttribute("ssuid", uid);
				
				 response.sendRedirect("home.jsp");
			}else{
				 response.sendRedirect("index.jsp?id=stwrong");
				
			}
		

		} catch (Exception e) {
			e.printStackTrace();
			 response.sendRedirect("index.jsp");
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
			if (rs != null) {
				try {
					rs.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}

		

	}
}
