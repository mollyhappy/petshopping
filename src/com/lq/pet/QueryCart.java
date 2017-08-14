package com.lq.pet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.lq.model.Cart;

//��ѯ���ﳵ
public class QueryCart extends HttpServlet{
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
		List<Cart> list=new ArrayList<Cart>();		
		String u_name=(String) session.getAttribute("username");
		if(u_name==null){
			resp.sendRedirect("userlogin.jsp");
		}
		list=Query(u_name);
		session.setAttribute("queryCart", list);
		req.getRequestDispatcher("gouwuche.jsp").forward(req, resp);
		return;
	}
	public List<Cart> Query(String u_name) {
		List<Cart> list=new ArrayList<Cart>(); 
		try {
			//�ӹ��ﳵ���ݿ��ж�ȡ���й��ﳵ��Ʒ����Ϣ
			Statement stmt=conn.createStatement();
			String sql="select c_kinds, c_id, c_price,c_num,c_total,c_path from cart where u_name='"+u_name+"'";
			System.out.println(sql);//��sql����ӡ�����������ݿ���
			ResultSet rs=stmt.executeQuery(sql);
			while(rs.next()){
				//�����еĶ�ȡ����������list				
				String c_kinds=rs.getString(1);
				int c_id=rs.getInt(2);
				int c_price=rs.getInt(3);
				int c_num=rs.getInt(4);
				int c_total=rs.getInt(5);
				String c_path=rs.getString(6);
				Cart cart=new Cart(u_name, c_kinds, c_id, c_price, c_num, c_total,c_path);
				list.add(cart);
			}
			return list;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;		
	}
}
