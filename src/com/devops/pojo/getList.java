package com.devops.pojo;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.devops.db.DatabaseConnection;
import com.mysql.jdbc.PreparedStatement;

import model.user;

public class getList {
	public ArrayList<user> getDSUser(){
		Connection a= DatabaseConnection.getConnection();
		String sql= "select * from users ";
		ArrayList<user> list=new ArrayList<>();
		try{
			PreparedStatement q=(PreparedStatement)a.prepareStatement(sql);
			ResultSet rs=q.executeQuery();
			while(rs.next()){
				user as=new user(rs.getString("uid"),					
						rs.getString("firstname"),
						rs.getString("lastname"), 
						rs.getString("username"),
						rs.getString("cpassword"),
						rs.getString("ngaysinh"),
						rs.getString("email"),
						rs.getString("numberphone"),
						rs.getString("status"),
						rs.getString("position") );
				list.add(as);
			}
			
		}catch(SQLException ee){
			ee.printStackTrace();
		}
		return list;
	}
	public ArrayList<Events> timKiem(String ten){
		Connection a= DatabaseConnection.getConnection();
		String sql= "SELECT * FROM `events` WHERE event_name like'%"+ten+"%' or start_date like '%"+ten+"%'";
		ArrayList<Events> list=new ArrayList<>();
		try{
			PreparedStatement q=(PreparedStatement)a.prepareStatement(sql);
			ResultSet rs=q.executeQuery();
			while(rs.next()){
				Events as=new Events(rs.getInt("event_id"),					
						rs.getString("event_name"),
						rs.getString("start_date"), 
						rs.getString("end_date"),
						rs.getInt("event_length"),
						rs.getInt("event_pid"),
						rs.getString("rec_type"),
						rs.getString("color"),
						rs.getInt("uid") );
				list.add(as);
			}
			
		}catch(SQLException ee){
			ee.printStackTrace();
		}
		return list;
	}
	public user getDSUser(int id){
		Connection a= DatabaseConnection.getConnection();
		String sql= "select * from users where uid='"+id+"'";
		user list=new user();
		try{
			PreparedStatement q=(PreparedStatement)a.prepareStatement(sql);
			ResultSet rs=q.executeQuery();
			while(rs.next()){
				list=new user(rs.getString("uid"),					
						rs.getString("firstname"),
						rs.getString("lastname"), 
						rs.getString("username"),
						rs.getString("cpassword"),
						rs.getString("ngaysinh"),
						rs.getString("email"),
						rs.getString("numberphone"),
						rs.getString("status"),
						rs.getString("position") );
				
			}
			
		}catch(SQLException ee){
			ee.printStackTrace();
		}
		return list;
	}
	public static void main(String[] args){
		getList a=new getList();
		for(user aw:a.getDSUser() ){
			System.out.println(aw.getUid());
		}
	}
	
	
}
