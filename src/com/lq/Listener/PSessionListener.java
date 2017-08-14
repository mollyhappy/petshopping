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
	//Ԫ����
	public void attributeAdded(HttpSessionBindingEvent arg0) {	
	}

	//Ԫ��ɾ
	public void attributeRemoved(HttpSessionBindingEvent arg0) {
	}

	//Ԫ�ظ�
	public void attributeReplaced(HttpSessionBindingEvent arg0) {
	}

	//session�����������¼�
	public void sessionCreated(HttpSessionEvent arg0) {
		HttpSession session=arg0.getSession();
		//ֻҪ����������ʸ�վ�㣬Ȼ��5s��ˢ��֮��sessionDestroyed�ͻᱻ�Զ�������
		arg0.getSession().setMaxInactiveInterval(30);//��СĬ�ϳ�ʱʱ�� 
//		List<Cart> list=new ArrayList<Cart>();
//		//��Ϊ�û�����session��ģ�����ֱ����sessionȡ
		String u_name=(String) session.getAttribute("username");
//		list=Query(u_name);
//		session.setAttribute("cartCon", list);
	}

	//session�������ڽ��������¼�
	public void sessionDestroyed(HttpSessionEvent arg0) {
		//��ĳ�û��Ĺ��ﳵ��Ʒ��ѯ
		HttpSession session=arg0.getSession();
		List<Cart> list=new ArrayList<Cart>();
		list=(List<Cart>) session.getAttribute("addcart");
		System.out.println(list);
		String u_name=(String) session.getAttribute("username");
		if(u_name==null){
			Add(list);
			System.out.println("һ��ʼ�����ݿ��в����ڸ��û��Ĺ�����Ϣ");
			return;
		}
		int[] c_ids=Query(u_name);
		Add(list);//������ﳵû�и���Ʒ����Ϣ������ӣ�����У�����¡�
		for(Cart c:list){
			for(int i=0;i<c_ids.length;i++){
				if(c_ids[i]==c.getC_id()){
					//�����Ʒ�����ͬ��˵������Ʒ�Դ��������ݿ��У�����и��¼���
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
			//�����ݿ��ж�ȡ���й��ﳵ��Ʒ����Ϣ
			Statement stmt=conn.createStatement();
			String sql="select c_id from cart where u_name='"+u_name+"'";
			System.out.println(sql);//��sql����ӡ�����������ݿ���
			ResultSet rs=stmt.executeQuery(sql);
			int cids[]=new int[rs.getRow()];
			System.out.println("�����Ʒ��ŵ�����"+cids[1]);
			int i=0;
			while(rs.next()){
				//�����еĶ�ȡ����������list
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
		//��session�д洢�ķŽ����ݿ�
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
		//��session�д洢�ķŽ����ݿ�
		try {	
			String sql="update cart set u_name='?',c_kinds='?',c_price=?,c_num=?,c_total=?,c_path='?' where c_id="+c_id+"";
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
}
