package com.lq.Filter;

import java.io.IOException;
import java.net.URL;
import java.util.Random;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class PFilter implements Filter{
	//��ȡ�����ļ��е�����
	private String ignorepages;
	private String[] ignorepageArray; 
	public void destroy() {
		
	}
	//���������֤��
//	**********************************�Ӽ���֤��*******************************
	public String initCode(int i,int j) {
		return String.format("%d +%d = ", i,j);
	}
	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		System.out.println("dofilter");
		HttpServletRequest req=(HttpServletRequest) request;
		HttpServletResponse resp=(HttpServletResponse) response;
		HttpSession session=req.getSession();
		//�ַ���������
		req.setCharacterEncoding("gbk");
		resp.setCharacterEncoding("gbk");
		resp.setHeader("Content-Type","text/html; charset=gbk");
		//�ǵ�¼����ʹ��
		String uri=req.getRequestURI();
		System.out.println("��ȡ�����·��"+uri);
		//�������ַ
		String file=uri.substring(uri.lastIndexOf("/")+1);
		System.out.println("��ַ����ɹ�"+file);
		//��֤������ڷ���ˣ���������֤��
//		**********************************�Ӽ���֤�벿��*******************************
//		if(file.equals("login.jsp")){
//			Random r=new Random();
//			int i=r.nextInt(10);
//			int j=r.nextInt(10);
//			session.setAttribute("codeMsg", initCode(i,j));
//			session.setAttribute("code", i+j);
//		}	
//		**********************************ͼƬ��֤��*************************************
//		if(file.equals("login.jsp")){
//			session.setAttribute("codeMsg", "what color:");
//		}
		//��¼�������֤��ı�д
		if(file.equals("Register.jsp")){
			Random random = new Random();
			int a = random.nextInt(10);
			int j = random.nextInt(10);
			int m = random.nextInt(10);
			int n = random.nextInt(10);
			session.setAttribute("code", String.format("%d%d%d%d", a,j,m,n));
		}
		if(uri.contains(".css")||uri.contains(".js")||uri.contains(".jpg")||uri.contains(".png")||uri.contains(".gif")){
			chain.doFilter(request,response);
			return;
		}
		//��������Ҫ��¼ҳ��,��ҳ,��¼��֤ҳ��,д����,����д��web.xml��
		//��web.xml�ļ��ж�ȡ�����ι��˵��ļ�����
		for(String f:ignorepageArray){
			if(file.equals(f)){
				chain.doFilter(request,response);
				return;
			}
		}
		//�жϲ�����ҳ����¼ҳ�棬��¼��֤ҳ���ҳ���Ƿ��¼
//		**********************************���ʣ����login.jsp�ظ���¼����ô�죿*******************************
		if(session.getAttribute("username")==null){
			//��ͬҳ������¼ҳ�棬��¼�ɹ�֮������ͬ��������Ҫ����ҳ��
			session.setAttribute("page", file);    //Ϊʲô���дuri��fileЧ��һ��
			//����ǵ�¼ҳ����֤��ĳ�������
//			**********************************�Ӽ���֤��*******************************
			req.getRequestDispatcher("userlogin.jsp").forward(req, resp);
			return;
		}
		//chain����filterһ��һ�����´�
		chain.doFilter(request, response);
		
	}

	
	public void init(FilterConfig filterConfig) throws ServletException {
		//��web.xml�ļ��ж�ȡ������Ϣ
		ignorepages = filterConfig.getInitParameter("ignorepages");
		if(!ignorepages.equals("")){
			ignorepageArray = ignorepages.split(",");
		}
//		System.out.println(ignorepageArray);
	}
}
