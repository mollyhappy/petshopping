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
	//ע��
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
		//�жϻ᲻�����¼��ͻ
		String name=req.getParameter("");
		String passwd=req.getParameter("");
		//����Զ����u_id���������ݿ��е�����ʽ
		String u_email=req.getParameter("");
		List<User> list= (List<User>) session.getAttribute("Userinfo");
		if(!name.equals("")){
			for(User user:list){
				if(name==user.getU_name()){
					//�Բ��𣬵�ǰ�û����ѱ�ע��
					return;
				}
			}
			Add(name,passwd,u_email);
			//���µ��û��ӽ�ȥ�����µ�¼
			req.getRequestDispatcher("��¼ҳ��").forward(req, resp);
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
