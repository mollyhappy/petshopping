package com.lq.action;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.lq.pet.DB;

public class RootLogin {
	public boolean checkRoot(String name,String password){
		DB db=new DB();
		Connection conn=db.getConn();
		String pass = "";
		try {
			String sql = "select r_passwd from root where rootname="+"\""+name+"\"";
			Statement stm = conn.createStatement();
			ResultSet rs = stm.executeQuery(sql);
			System.out.println(sql);
			if(rs.next()){
				pass = rs.getString(1);
				if(pass.equals(password)){
					System.out.println("管理员登录成功");
					return true;
				}
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
}
