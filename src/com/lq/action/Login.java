package com.lq.action;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.lq.pet.DB;

public class Login  {
	public boolean checkUser(String name,String password){
		DB db=new DB();
		Connection conn=db.getConn();
		String pass = "";
		try {
			String sql = "select u_passwd from user where u_name="+"\""+name+"\"";
			Statement stm = conn.createStatement();
			ResultSet rs = stm.executeQuery(sql);
		
			if(rs.next()){
				pass = rs.getString(1);
				if(pass.equals(password)){
					System.out.println("µÇÂ¼³É¹¦");
					return true;
				}
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
}
