package com.lq.pet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.jasper.tagplugins.jstl.core.Out;

import com.lq.model.Cart;
import com.lq.model.Order_detail;
import com.sun.org.apache.bcel.internal.generic.NEW;
//单件购买
public class BuyCart extends HttpServlet{
	DB db=new DB();
	Connection conn=db.getConn();
	SimpleDateFormat sdf=new SimpleDateFormat("yyy-MM-dd  HH:mm:ss");
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		//获取选中的id，然后跳转到地址填写页面，写入地址，通过getparameter获取地址的填写信息，确认购买，跳转到页面
		//查询相应的id在cart中的信息，并结合地址信息，写入详细订单的数据库，然后在订单数据库中将已购买的数据移除
		PrintWriter out =resp.getWriter();
		HttpSession session=req.getSession();
		if(req.getParameterValues("p_kid")==null){
			out.print("请选择您想要购买的商品");
			resp.setHeader("refresh", "2;url=gouwuche.jsp");//刷新
			return;
		}
		if(req.getParameter("o_name")==null||req.getParameter("o_address")==null||req.getParameter("o_phone")==null){
			out.print("请填写你的详细信息");
			resp.setHeader("refresh", "2;url=test.jsp");//刷新
			return;
		}
		//List<Cart> carts=new ArrayList<Cart>();
		List<Order_detail> list=new ArrayList<Order_detail>();
		//int c_id=Integer.valueOf(req.getParameter("p_kid"));
		//***************************************************添加
		String p_kids[]=req.getParameterValues("p_kid");
		int[] c_ids=new int[p_kids.length];
		String o_name=req.getParameter("o_name");
		int o_phone=Integer.valueOf(req.getParameter("o_phone"));
		String o_address=req.getParameter("o_address");
		o_name=new String(o_name.getBytes("iso-8859-1"),"gbk");
		o_address=new String(o_address.getBytes("iso-8859-1"),"gbk");
		System.out.println("用户名为++++++++++++++++++++"+o_name);
		for(int i=0;i<c_ids.length;i++){
			System.out.println("未出错1111111111111111111111111111");
			c_ids[i]=Integer.valueOf(p_kids[i]);
			System.out.println("依次循环出所取得商品编号"+c_ids[i]);
			//carts=(List<Cart>) session.getAttribute("queryCart");
			System.out.println("未出错2222222222222222222222222222222222");
			list=Query(c_ids[i], o_name, o_phone, o_address);//获取查询到的cart信息，并将信息封装成详细信息表中的内容
			System.out.println("未出错3333333333333333333333333333333333333333333");
			if(UpdateOrder(list)){
				System.out.println("购买成功");
				//carts.remove(c_ids[i]);//将已购买的购物车内容删除，直接删除购物车？
				if(deleteCart(c_ids[i])){
					System.out.println("删除成功");
				}
				else{
					System.out.println("删除不成功");
				}
				
			}
		}
		resp.sendRedirect("shopping1.jsp");
		return;
		
	}
	private List<Order_detail> Query(int c_id,String o_name,int o_phone,String o_address) {
		List<Order_detail> list=new ArrayList<Order_detail>();
		try {			
			Statement stmt=conn.createStatement();
			String sql="select c_kinds,c_total,c_num from cart where c_id="+c_id+"";
			ResultSet rs=stmt.executeQuery(sql);
			while(rs.next()){
				int p_kid=c_id;
				String p_name=rs.getString(1);
				int o_price=rs.getInt(2);
				int o_number=rs.getInt(3);
				String o_datetime=sdf.format(new Date());
				Order_detail order_detail=new Order_detail(p_kid, p_name, o_name, o_phone, o_address, o_price, o_number, o_datetime);
				list.add(order_detail);
			}	
			return list;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
	private boolean UpdateOrder(List<Order_detail> list) {
		String sql="insert into order_detail(p_kid, p_name, o_name, o_phone, o_address, o_price, o_number, o_datetime) values(?,?,?,?,?,?,?,?)";
		try {
			PreparedStatement pstmt=conn.prepareStatement(sql);
			for(Order_detail order:list){
				pstmt.setInt(1, order.getP_kid());
				pstmt.setString(2, order.getP_name());
				pstmt.setString(3, order.getO_name());
				pstmt.setInt(4, order.getO_phone());
				pstmt.setString(5, order.getO_address());
				pstmt.setInt(6, order.getO_price());
				pstmt.setInt(7, order.getO_number());
				pstmt.setString(8, order.getO_datetime());
				pstmt.executeUpdate();
			}
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
		return false;		
	}
	private boolean deleteCart(int c_id) {
		Statement stmt;
		try {
			stmt = conn.createStatement();
			String sql="delete from cart where c_id="+c_id+"";
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
