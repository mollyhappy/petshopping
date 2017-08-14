package com.lq.pet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
//��δд��web.xml
public class DeleteCart extends HttpServlet{
	DB db=new DB();
	Connection conn=db.getConn();
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		//��ȡ���ﳵ����Ʒ��id
		//Ȼ�����id�������ݿ⣬ֱ��ɾ��
		PrintWriter out=resp.getWriter();
//		if(req.getParameter("p_kid")==null){
//			out.print("����������Ҫɾ������Ʒ");
//			resp.setHeader("refresh", "2;url=gouwuche.jsp");//ˢ��
//			return;
//		}
//		int p_kid=Integer.valueOf(req.getParameter("p_kid"));
//		if(deleteC(p_kid)){
//			System.out.println("����ɾ���ɹ�");
//			resp.sendRedirect("gouwuche.jsp");
//		}
		
		if(req.getParameterValues("p_kid")==null){
			out.print("��ѡ������Ҫɾ������Ʒ");
			resp.setHeader("refresh", "2;url=gouwuche.jsp");//ˢ��
			return;
		}
		String p_kids[]=req.getParameterValues("p_kid");
		int[] c_ids=new int[p_kids.length];
		for(int i=0;i<c_ids.length;i++){
			c_ids[i]=Integer.valueOf(p_kids[i]);
			if(deleteC(c_ids[i])){
				System.out.println("ɾ���ɹ�");
			}
		}
		resp.sendRedirect("shopping1.jsp");
		return;
	}
	private boolean deleteC(int p_kid) {	
		Statement stmt;
		try {
			stmt = conn.createStatement();
			String sql="delete from cart where c_id="+p_kid+"";
			System.out.println(sql);
			stmt.executeUpdate(sql);
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}
	
}
