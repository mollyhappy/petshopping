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

public class SaleCart extends HttpServlet{
	//是否存在于cart数据库中，如果存在，直接取信息，如果不存在，择直接从商品数据库中获取信息，将信息存于session中，然后在页面取出
	//页面显示购买信息，并填写相关的用户信息，然后点击购买信息确认，跳转到buycart页面，然后执行相关操作
	//查看购物车是否存在该商品
	//从购物车中选择商品
	DB db=new DB();
	Connection conn=db.getConn();
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		List<Cart> list=new ArrayList<Cart>();
		List<Cart> listAll=new ArrayList<Cart>();
		HttpSession session=req.getSession();
		String p_kids[]=req.getParameterValues("p_kid");
		int[] c_ids=new int[p_kids.length];
		for(int i=0;i<c_ids.length;i++){
			c_ids[i]=Integer.valueOf(p_kids[i]);
			System.out.println("依次循环出所取得商品编号"+c_ids[i]);
			list=QueryCart(c_ids[i]);
			listAll.addAll(list);
		}
		session.setAttribute("dingdan", listAll);
		req.getRequestDispatcher("test.jsp").forward(req, resp);
//		if(QueryCart(p_kids))
	}
	
//	private boolean QueryCart(int[] p_kids) {
//		
//		return true;
//	}
	private List<Cart> QueryCart(int c_id) {
		List<Cart> list=new ArrayList<Cart>();
		try {
			Statement stmt=conn.createStatement();
			String sql="select u_name,c_kinds,c_price,c_num,c_total,c_path from cart where c_id="+c_id+"";
			ResultSet rs=stmt.executeQuery(sql);
			while(rs.next()){
				String u_name=rs.getString(1);
				String c_kinds=rs.getString(2);
				int c_price=rs.getInt(3);
				int c_num=rs.getInt(4);
				int c_total=rs.getInt(5);
				String c_path=rs.getString(6);
				Cart cart=new Cart(u_name, c_kinds, c_id, c_price, c_num, c_total, c_path);
				list.add(cart);
			}
			return list;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
}
