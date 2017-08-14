package com.lq.pet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
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

public class AddCart extends HttpServlet{
	//ͨ�����add(��ӹ��ﳵ��ť���ύ��AddCart��servlet��ͨ��p_kid�����Ʒ��������Ϣ��Ȼ�������ݿ�)ͨ������p_kidдһ������
	DB db=new DB();
	Connection conn=db.getConn();
	List<Cart> list=new ArrayList<Cart>();
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session=req.getSession();
		List<Cart> list=new ArrayList<Cart>();
		String u_name=(String) session.getAttribute("username");
		if(u_name==null){
			resp.sendRedirect("userlogin.jsp");
			return;
		}
		int p_kid=Integer.valueOf(req.getParameter("p_kid"));
		int c_num=Integer.valueOf(req.getParameter("count"));
		System.out.println("1��ȡ�������Ʒ�ļ���++++++++++++++++++++++"+c_num);
		list=query(p_kid,u_name,c_num);
		for(Cart c:list){
			System.out.println("+++++++++++list�е���Ʒ����+++++++++++++++++"+c.getC_num());
			
			System.out.println("+++++++++++list�е���Ʒ�ܶ�+++++++++++++++++"+c.getC_total());
		}
		List<Integer> c_ids=new ArrayList<Integer>();
		c_ids=QueryCart(u_name);
		System.out.println("��ȡ���û��Ĺ������Ʒ���+++++++++++++++++++++++++"+c_ids);
		if(c_ids!=null){
			for(int i:c_ids){
				if(i==p_kid){
					Update(list, p_kid);
					System.out.println("���ﳵ����ӳɹ�");
					resp.sendRedirect("shopping1.jsp");//����֮ǰ��ҳ��
					return;
				}
			}
		}	
		Add(list);
		System.out.println("���ﳵ����ӳɹ�");
		resp.sendRedirect("shopping1.jsp");//����֮ǰ��ҳ��
		return;
	}
	private List<Cart> query(int p_kid,String u_name,int c_num) {
		List<Cart> list=new ArrayList<Cart>();
		try {
			Statement stmt=conn.createStatement();
			String sql="select p_kid,p_kind,p_price,p_path from products where p_kid="+p_kid+"";
			System.out.println(sql);
			ResultSet rs=stmt.executeQuery(sql);
			while(rs.next()){
				int c_id=rs.getInt(1);
				String c_kinds=rs.getString(2);
				int c_price=rs.getInt(3);
				String c_path=rs.getString(4);
//				System.out.println("�����ͼƬ�ĵ�ַΪ"+c_path);
				int c_total=c_num*c_price;
				System.out.println("��ȡ�������Ʒ�ļ���++++++++++++++++++++++"+c_num);
				Cart cart=new Cart(u_name, c_kinds, c_id, c_price,c_num,c_total,c_path);
				list.add(cart);
			}
			return list;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
	
	
	//�������
	public void Add(List<Cart> list) {
		//��session�д洢�ķŽ����ݿ�
		try {	
			String sql="insert into cart(u_name,c_kinds,c_id,c_price,c_num,c_total,c_path) values(?,?,?,?,?,?,?)";
			PreparedStatement pstmt=conn.prepareStatement(sql);
			for(Cart c:list){
				System.out.println("111");
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
		//��session�д洢�ķŽ����ݿ�
		try {	
			String sql="update cart set u_name=?,c_kinds=?,c_price=?,c_num=?,c_total=?,c_path=? where c_id="+c_id+"";
			PreparedStatement pstmt=conn.prepareStatement(sql);
			for(Cart c:list){
				System.out.println("�������");
				pstmt.setString(1, c.getU_name());
				pstmt.setString(2, c.getC_kinds());
				pstmt.setInt(3, c.getC_price());
				pstmt.setInt(4, c.getC_num());
				pstmt.setInt(5, c.getC_total());
				pstmt.setString(6, c.getC_path());
				System.out.println("Cart���ݿ���³ɹ�");
				pstmt.executeUpdate();
				//System.out.println("333");
			}
			System.out.println(sql);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
//	private boolean Query(String u_name) {
//		List<Cart> list=new ArrayList<Cart>(); 
//		try {
//			//�����ݿ��ж�ȡ���й��ﳵ��Ʒ����Ϣ
//			Statement stmt=conn.createStatement();
//			String sql="select c_id from cart where u_name='"+u_name+"'";
//			System.out.println(sql);//��sql����ӡ�����������ݿ���
//			ResultSet rs=stmt.executeQuery(sql);
//			while(rs.next()){
//				return true;
//			}
//		}catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		return false;
//	}
	public List<Integer> QueryCart(String u_name) {
		List<Integer> list=new ArrayList<Integer>(); 
		try {
			//�����ݿ��ж�ȡ���й��ﳵ��Ʒ����Ϣ
			Statement stmt=conn.createStatement();
			String sql="select c_id from cart where u_name='"+u_name+"'";
			System.out.println(sql);//��sql����ӡ�����������ݿ���
			ResultSet rs=stmt.executeQuery(sql);
			while(rs.next()){
				//�����еĶ�ȡ����������list
				int c_id=rs.getInt(1);
				list.add(c_id);
			}
			System.out.println("û����������������������������"+111111111);
			return list;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;		
	}
}


