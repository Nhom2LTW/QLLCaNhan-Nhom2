package com.devops.user;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.devops.db.DatabaseConnection;

/**
 * Servlet implementation class UpdateInf
 */
@WebServlet("/ChangePass")
public class ChangePass extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ChangePass() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
    protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, 
			HttpServletResponse response) throws ServletException, IOException {
		
				String newpass = request.getParameter("repassword");
				
				String i = request.getParameter("uid");
				int UID = Integer.parseInt(i);
				String PW = "";
				
				
				if (UID != 0) {

					if (newpass != null) {
						PW = newpass;
					} 
					
					
					Connection connection = null;
					PreparedStatement ps = null;

					try {
						connection = DatabaseConnection.getConnection();
						ps = connection
								.prepareStatement("update users set cpassword=?  where uid=? ");
								
						ps.setString(1, PW);
						ps.setInt(2, UID);

						ps.executeUpdate();

					} catch (Exception e) {
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

					response.sendRedirect("doimktc.jsp");
				} 

			}
}

