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

import com.lq.model.Products;

public class Hot_goods extends HttpServlet{
	//先从数据库中取出哪些商品，存起来
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
		List<Products> list=Hot();
		session.setAttribute("Hot_goods", list);
		resp.sendRedirect("index.jsp");
	}
	private List<Products> Hot() {
		try {
			Statement stmt=conn.createStatement();
			//从数据库中选取热销商品，从第五个开始（limit从0开始），选8个
			String sql="select p_path,p_kid,p_kind,p_id,p_age,p_num,p_sex,p_price from products limit 5,8";
			ResultSet rs=stmt.executeQuery(sql);
			List<Products> list=new ArrayList<Products>();
			while(rs.next()){
				String p_path=rs.getString(1);
				int p_kid=rs.getInt(2);
				String p_kind=rs.getString(3);
				int p_id=rs.getInt(4);
				String p_age=rs.getString(5);
				int p_num=rs.getInt(6);
				String p_sex=rs.getString(7);
				int p_price=rs.getInt(8);
				Products products=new Products(p_path,p_kid,p_kind,p_id,p_age,p_num,p_sex,p_price);
				list.add(products);
			}
			return list;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
}
