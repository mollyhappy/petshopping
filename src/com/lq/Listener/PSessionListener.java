package com.lq.Listener;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionAttributeListener;
import javax.servlet.http.HttpSessionBindingEvent;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

import com.lq.model.Cart;
import com.lq.pet.DB;

public class PSessionListener implements HttpSessionListener,HttpSessionAttributeListener{
	DB db=new DB();
	Connection conn=db.getConn();
	//元素增
	public void attributeAdded(HttpSessionBindingEvent arg0) {	
	}

	//元素删
	public void attributeRemoved(HttpSessionBindingEvent arg0) {
	}

	//元素改
	public void attributeReplaced(HttpSessionBindingEvent arg0) {
	}

	//session创建，触发事件
	public void sessionCreated(HttpSessionEvent arg0) {
		HttpSession session=arg0.getSession();
		//只要用浏览器访问该站点，然后5s不刷新之后，sessionDestroyed就会被自动调用了
		arg0.getSession().setMaxInactiveInterval(30);//改小默认超时时间 
//		List<Cart> list=new ArrayList<Cart>();
//		//因为用户名用session存的，所以直接用session取
		String u_name=(String) session.getAttribute("username");
//		list=Query(u_name);
//		session.setAttribute("cartCon", list);
	}

	//session生命周期结束触发事件
	public void sessionDestroyed(HttpSessionEvent arg0) {
		//将某用户的购物车商品查询
		HttpSession session=arg0.getSession();
		List<Cart> list=new ArrayList<Cart>();
		list=(List<Cart>) session.getAttribute("addcart");
		System.out.println(list);
		String u_name=(String) session.getAttribute("username");
		if(u_name==null){
			Add(list);
			System.out.println("一开始，数据库中不存在该用户的购买信息");
			return;
		}
		int[] c_ids=Query(u_name);
		Add(list);//如果购物车没有该商品的信息，则添加，如果有，则更新。
		for(Cart c:list){
			for(int i=0;i<c_ids.length;i++){
				if(c_ids[i]==c.getC_id()){
					//如果商品编号相同，说明该商品以存在于数据库中，则进行更新即可
					Update(list,c_ids[i]);
					return;
				}
			}
		}
		Add(list);
	}
	public int[] Query(String u_name) {
		List<Cart> list=new ArrayList<Cart>(); 
		try {
			//从数据库中读取所有购物车商品的信息
			Statement stmt=conn.createStatement();
			String sql="select c_id from cart where u_name='"+u_name+"'";
			System.out.println(sql);//将sql语句打印，并放入数据库检查
			ResultSet rs=stmt.executeQuery(sql);
			int cids[]=new int[rs.getRow()];
			System.out.println("获得商品编号的数组"+cids[1]);
			int i=0;
			while(rs.next()){
				//将所有的都取出来，放入list
				cids[i]=rs.getInt(1);
				i++;
			}
			return cids;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;		
	}
	public void Add(List<Cart> list) {
		//将session中存储的放进数据库
		try {	
			String sql="insert into cart(u_name,c_kinds,c_id,c_price,c_num,c_total,c_path) values(?,?,?,?,?,?,?)";
			PreparedStatement pstmt=conn.prepareStatement(sql);
			for(Cart c:list){
				//System.out.println("111");
				pstmt.setString(1, c.getU_name());
				pstmt.setString(2, c.getC_kinds());
				pstmt.setInt(3, c.getC_id());
				pstmt.setInt(4, c.getC_price());
				pstmt.setInt(5, c.getC_num());
				pstmt.setInt(6, c.getC_total());
				pstmt.setString(7, c.getC_path());
				//System.out.println("222");
				pstmt.executeUpdate();
				//System.out.println("333");
			}
			System.out.println(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	public void Update(List<Cart> list,int c_id) {
		//将session中存储的放进数据库
		try {	
			String sql="update cart set u_name='?',c_kinds='?',c_price=?,c_num=?,c_total=?,c_path='?' where c_id="+c_id+"";
			PreparedStatement pstmt=conn.prepareStatement(sql);
			for(Cart c:list){
				System.out.println("进入更新");
				pstmt.setString(1, c.getU_name());
				pstmt.setString(2, c.getC_kinds());
				pstmt.setInt(3, c.getC_price());
				pstmt.setInt(4, c.getC_num());
				pstmt.setInt(5, c.getC_total());
				pstmt.setString(6, c.getC_path());
				System.out.println("Cart数据库更新成功");
				pstmt.executeUpdate();
				//System.out.println("333");
			}
			System.out.println(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
