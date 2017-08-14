package com.lq.pet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.lq.model.User;

public class Register1 extends HttpServlet{
	//注册
	DB db=new DB();
	Connection conn=db.getConn();
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(req, resp);
	}
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		HttpSession session=req.getSession();
		//判断会不会与登录冲突
		String name=req.getParameter("");
		String passwd=req.getParameter("");
		//编号自动添加u_id，采用数据库中递增方式
		String u_email=req.getParameter("");
		List<User> list= (List<User>) session.getAttribute("Userinfo");
		if(!name.equals("")){
			for(User user:list){
				if(name==user.getU_name()){
					//对不起，当前用户名已被注册
					return;
				}
			}
			Add(name,passwd,u_email);
			//将新的用户加进去，重新登录
			req.getRequestDispatcher("登录页面").forward(req, resp);
		}
	}
	private void Add(String name,String passwd,String u_email) {
		try {
			Statement stmt=conn.createStatement();
			String sql="insert into user(u_name,u_passwd,u_email) values('"+name+"','"+passwd+"','"+u_email+"')";
			stmt.executeUpdate(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
