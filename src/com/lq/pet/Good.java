package com.lq.pet;

import java.io.IOException;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.lq.model.Products;

public class Good extends HttpServlet{
	DB db=new DB();
	Connection conn=db.getConn();
	//取出所有商品，根据所选的种类选择,通过链接加地址栏参数，传递id
	//页面,分页
	int flag=0;
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		HttpSession session=req.getSession();
		List<Products> list;
		HashMap<String,String> map=new HashMap<String, String>();

		//分页
		//一页显示的字段数
		int countnum=0; 
		int page_now=0;
		String showcount=req.getParameter("showcount");
		String page_on=req.getParameter("pageon");
		if(showcount!=null){
			countnum=Integer.valueOf(showcount);
		}
		if(page_on!=null){
			page_now=(Integer.valueOf(page_on)-1);
		}
		//显示部分 
		if(req.getParameter("p_id")!=null){
			int p_id=Integer.valueOf(req.getParameter("p_id"));
			System.out.println(p_id);
			list=PartPro(p_id);
			session.setAttribute("PartProducts", list);
			flag=1;
		}
		//将所有的进行分页
		else{
			list=showpage(page_now, countnum);			
			session.setAttribute("AllProducts", list);
			flag=2;
		}
		if(flag==1){
			resp.sendRedirect("all_kind.jsp");
			return;
		}
		else if(flag==2){
			resp.sendRedirect("shopping.jsp");
			return;
		}
	}
	private List<Products> PartPro(int p_id) {
		try {
			Statement stmt=conn.createStatement();
			System.out.println(p_id);
			String sql="select p_path,p_kid,p_kind,p_id,p_age,p_num,p_sex,p_price from products where p_id="+p_id+"";
			System.out.println(sql);
			ResultSet rs=stmt.executeQuery(sql);
			List<Products> list=new ArrayList<Products>();
			while(rs.next()){
				String p_path=rs.getString(1);
				int p_kid=rs.getInt(2);
				String p_kind=rs.getString(3);
				int p_id2=rs.getInt(4);
				String p_age=rs.getString(5);
				int p_num=rs.getInt(6);
				String p_sex=rs.getString(7);
				int p_price=rs.getInt(8);
				Products products=new Products(p_path,p_kid,p_kind,p_id2,p_age,p_num,p_sex,p_price);
				list.add(products);
				
			}
			stmt.close();
			return list;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	//分页
	private List<Products> showpage(int n,int p){
		List<Products> list=new ArrayList<Products>();
		try {
			CallableStatement cstmt=conn.prepareCall("call p_currentpage(?,?)");
			cstmt.setInt(1, n);
			cstmt.setInt(2, p);
			if(cstmt.execute()){
				ResultSet rs=cstmt.getResultSet();
				while(rs.next()){
					String p_path=rs.getString(1);
					int p_kid=rs.getInt(2);
					String p_kind=rs.getString(3);
					int p_id2=rs.getInt(4);
					String p_age=rs.getString(5);
					int p_num=rs.getInt(6);
					String p_sex=rs.getString(7);
					int p_price=rs.getInt(8);
					Products products=new Products(p_path,p_kid,p_kind,p_id2,p_age,p_num,p_sex,p_price);
					list.add(products);
				}
			}
			cstmt.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doPost(req, resp);
	}
}
