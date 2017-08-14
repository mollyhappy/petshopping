package com.lq.pet;

import java.io.IOException;
import java.io.PrintWriter;
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

import com.lq.action.RootLogin;
import com.lq.model.Order_detail;

public class RootQuery extends HttpServlet{
	DB db=new DB();
	Connection conn=db.getConn();
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		req.setCharacterEncoding("gbk");
		resp.setCharacterEncoding("gbk");
		resp.setHeader("Content-Type","text/html; charset=gbk");
		HttpSession session = req.getSession();
		PrintWriter out = resp.getWriter();
		List<Order_detail> order=new ArrayList<Order_detail>();
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		RootLogin rootLogin=new RootLogin();
		Boolean check=rootLogin.checkRoot(username, password);
		if(!check){
			System.out.println("1111");
		}
		order=queryOrder_details();
		session.setAttribute("allinfo", order);
		req.getRequestDispatcher("Rootindex.jsp").forward(req, resp);
	}
	private List<Order_detail> queryOrder_details() {
		List<Order_detail> order=new ArrayList<Order_detail>();
		try {
			Statement stmt=conn.createStatement();
			String sql="select o_id,p_kid,p_name,o_name,o_phone,o_price,o_number,o_datetime,o_address from order_detail";
			ResultSet rs=stmt.executeQuery(sql);
			while(rs.next()){
				int o_id=rs.getInt(1);
				int p_kid=rs.getInt(2);
				String p_name=rs.getString(3);
				String o_name=rs.getString(4);
				int o_phone=rs.getInt(5);
				int o_price=rs.getInt(6);
				int o_number=rs.getInt(7);
				String o_datetime=rs.getString(8);
				String o_address=rs.getString(9);
				Order_detail order_detail=new Order_detail(o_id,p_kid, p_name, o_name, o_phone, o_address, o_price, o_number, o_datetime);
				order.add(order_detail);
			}			
			return order;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return order;
	}
}
