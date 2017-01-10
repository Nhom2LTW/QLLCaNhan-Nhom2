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
 * Servlet implementation class UpdateUser
 */
@WebServlet("/UpdateUser")
public class UpdateUser extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UpdateUser() {
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
		// old user values

		String ofn = request.getParameter("txo2");
		String oln = request.getParameter("txo3");
		String ouser = request.getParameter("txo4");
		String opass = request.getParameter("txo5");
		String ongs = request.getParameter("txo6");
		String oemail = request.getParameter("txo7");
		String onum = request.getParameter("txo8");
		String ostt = request.getParameter("txo9");
		String oposi = request.getParameter("txo10");
		// checkbox values
		String chfn = request.getParameter("ch2");
		String chln = request.getParameter("ch3");
		String chuser = request.getParameter("ch4");
		String chpass = request.getParameter("ch5");
		String chngs = request.getParameter("ch6");
		String chemail = request.getParameter("ch7");
		String chnum = request.getParameter("ch8");
		String chstt = request.getParameter("ch9");
		String chposi = request.getParameter("ch10");
		
		// new user values
		String nfn = request.getParameter("tx2");
		String nln = request.getParameter("tx3");
		String nuser = request.getParameter("tx4");
		String npass = request.getParameter("tx5");
		String nngs = request.getParameter("tx6");
		String nemail = request.getParameter("tx7");
		String nnum = request.getParameter("tx8");
	

	
	
		// new values
		String nus = "";
		String nuss = request.getParameter("UserStatus");
		if (nuss.equals("Active")) {
			nus = "A";
		} else {
			nus = "I";
		}
		
		

		String nup = "";
		String nupp = request.getParameter("UserPosition");
		if (nupp.equals("Admin")) {
			nup = "A";
		} else {
			nup = "U";
		}

		String i = request.getParameter("txo");
		int UID = Integer.parseInt(i);
		String UFN = "";
		String ULN = "";
		String UEm = "";
		String UUN = "";
		String UPW = "";
		String UNS = "";
		String UNP = "";
		String UST = "";
		String UPO = "";

		if (UID != 0) {

			if (chfn != null) {
				UFN = nfn;
			} else {
				UFN = ofn;
			}
			if (chln != null) {
				ULN = nln;
			} else {
				ULN = oln;
			}

			if (chuser != null) {
				UUN = nuser;
			} else {
				UUN = ouser;
			}

			if (chpass != null) {
				UPW = npass;
			} else {
				UPW = opass;
			}

			if (chngs != null) {
				UNS = nngs;
			} else {
				UNS = ongs;
			}
			if (chemail != null) {
				UEm = nemail;
			} else {
				UEm = oemail;
			}
			if (chnum != null) {
				UNP = nnum;
			} else {
				UNP = onum;
			}

			if (chstt != null) {
				UST = nus;
			} else {
				UST = ostt;
			}

			if (chposi != null) {
				UPO = nup;
			} else {
				UPO = oposi;
			}
		
			

			Connection connection = null;
			PreparedStatement ps = null;

			try {
				connection = DatabaseConnection.getConnection();
				ps = connection
						.prepareStatement("update users set firstname=?, lastname=?, username=?, cpassword=?, ngaysinh=?, email=?, numberphone=?, status=?, position=? where uid=? ");
						
				ps.setString(1, UFN);
				ps.setString(2, ULN);
				ps.setString(3, UUN);
				ps.setString(4, UPW);
				ps.setString(5, UNS);
				ps.setString(6, UEm);
				ps.setString(7, UNP);
				ps.setString(8, UST);
				ps.setString(9, UPO);
				ps.setInt(10, UID);

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

			response.sendRedirect("userupdateSuccess.jsp");
		} else {

			response.sendRedirect("userupdateunsuccess.jsp");
		}

	}

}
