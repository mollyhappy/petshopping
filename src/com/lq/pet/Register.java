package com.lq.pet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.lq.model.User;

public class Register extends HttpServlet{
	//注册
	DB db=new DB();
	Connection conn=db.getConn();

	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		req.setCharacterEncoding("gbk");
		resp.setCharacterEncoding("gbk");
		resp.setHeader("Content-Type","text/html; charset=gbk");
		HttpSession session=req.getSession();
		PrintWriter out = resp.getWriter();
		req.setCharacterEncoding("gbk");
		resp.setCharacterEncoding("gbk");
		resp.setHeader("Content-Type","text/html; charset=gbk");
		//判断会不会与登录冲突
		String name=req.getParameter("username");
		String password=req.getParameter("password");
		String email=req.getParameter("email");
		String codetext=req.getParameter("codetext");
		String code=(String)session.getAttribute("code");
		
		try {
			String sql="select u_name from user where u_name="+"\""+name+"\"";
			Statement stm = conn.createStatement();
			ResultSet rs = stm.executeQuery(sql);
			if(rs.next()){
				out.println("<center><h1>");
				out.println("该用户名已被添加！请重新填写用户名！");
				out.println("</h1></center>");
				resp.setHeader("refresh", "2;url=Register.jsp");
			}else{
				if(codetext.equals(code)){
					try {
						Statement stmt=conn.createStatement();
						String insertsql="insert into user(u_name,u_passwd,u_email) values('"+name+"','"+password+"','"+email+"')";
						stmt.executeUpdate(insertsql);
						resp.sendRedirect("RegSuccess.jsp");	
					} catch (SQLException e) {
						e.printStackTrace();
					}
				}else{
					out.println("<center><h1>");
					out.println("您的验证码输入错误，请重新注册！");
					out.println("</h1></center>");
					resp.setHeader("refresh", "2;url=Register.jsp");
				}	
			} 
		}catch (SQLException e) {
			// TODO 自动生成的 catch 块
			e.printStackTrace();
		}
		
	}
}
