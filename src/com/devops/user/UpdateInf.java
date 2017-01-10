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
@WebServlet("/UpdateInf")
public class UpdateInf extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UpdateInf() {
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
		
				String ho = request.getParameter("ho");
				String ten = request.getParameter("ten");
				String ngaysinh = request.getParameter("ngaysinh");
				String email = request.getParameter("email");
				String nump = request.getParameter("nump");
			

			
			
				

				String i = request.getParameter("uid");
				int UID = Integer.parseInt(i);
				String UFN = "";
				String ULN = "";
				String UEm = "";
				String UNS = "";
				String UNP = "";
				
				if (UID != 0) {

					if (ho != null) {
						UFN = ho;
					} 
					if (ten != null) {
						ULN = ten;
					} 

					if (ngaysinh != null) {
						UNS= ngaysinh;
					} 

					if (email != null) {
						UEm = email;
					} 

					if (nump != null) {
						UNP = nump;
					} 
					
					

					Connection connection = null;
					PreparedStatement ps = null;

					try {
						connection = DatabaseConnection.getConnection();
						ps = connection
								.prepareStatement("update users set firstname=?, lastname=?, ngaysinh=?, email=?, numberphone=? where uid=? ");
								
						ps.setString(1, UFN);
						ps.setString(2, ULN);
						ps.setString(3, UNS);
						ps.setString(4, UEm);
						ps.setString(5, UNP);
						ps.setInt(6, UID);

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

					response.sendRedirect("tttaikhoan.jsp");
				} 

			}
}

