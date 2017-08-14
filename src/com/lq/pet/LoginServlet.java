package com.lq.pet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.lq.action.Login;


public class LoginServlet extends HttpServlet{
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("gbk");
		resp.setCharacterEncoding("gbk");
		resp.setHeader("Content-Type","text/html; charset=gbk");
		HttpSession session = req.getSession();
		PrintWriter out = resp.getWriter();
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		String path=(String)session.getAttribute("page");
		Login login = new Login();
		Boolean check = login.checkUser(username, password);
		
		//�û���¼��  �ͽ��û�������session��
		session.setAttribute("username", username);		
		//�ж��������Ƿ���ȷ
		if(check){
			if(path!=null && !path.equals("")){
				resp.sendRedirect(path);
			}
			else {
				resp.sendRedirect("Pet");
			}
		}else{
			out.println("�û��������������������<a href='userlogin.jsp'>��¼</a>");
			out.print("����");
		}	
	}
}
