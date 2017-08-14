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
	//获取配置文件中的内容
	private String ignorepages;
	private String[] ignorepageArray; 
	public void destroy() {
		
	}
	//随机生成验证码
//	**********************************加减验证码*******************************
	public String initCode(int i,int j) {
		return String.format("%d +%d = ", i,j);
	}
	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {
		System.out.println("dofilter");
		HttpServletRequest req=(HttpServletRequest) request;
		HttpServletResponse resp=(HttpServletResponse) response;
		HttpSession session=req.getSession();
		//字符集的设置
		req.setCharacterEncoding("gbk");
		resp.setCharacterEncoding("gbk");
		resp.setHeader("Content-Type","text/html; charset=gbk");
		//非登录不许使用
		String uri=req.getRequestURI();
		System.out.println("获取进入的路径"+uri);
		//分离出地址
		String file=uri.substring(uri.lastIndexOf("/")+1);
		System.out.println("地址分离成功"+file);
		//验证码存在于服务端，如果添加验证码
//		**********************************加减验证码部分*******************************
//		if(file.equals("login.jsp")){
//			Random r=new Random();
//			int i=r.nextInt(10);
//			int j=r.nextInt(10);
//			session.setAttribute("codeMsg", initCode(i,j));
//			session.setAttribute("code", i+j);
//		}	
//		**********************************图片验证码*************************************
//		if(file.equals("login.jsp")){
//			session.setAttribute("codeMsg", "what color:");
//		}
		//登录界面的验证码的编写
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
		//过滤器需要登录页面,首页,登录验证页面,写死了,怎样写入web.xml中
		//从web.xml文件中读取到屏蔽过滤的文件内容
		for(String f:ignorepageArray){
			if(file.equals(f)){
				chain.doFilter(request,response);
				return;
			}
		}
		//判断不是首页，登录页面，登录验证页面的页面是否登录
//		**********************************疑问：如果login.jsp重复登录，怎么办？*******************************
		if(session.getAttribute("username")==null){
			//不同页面进入登录页面，登录成功之后结果不同，所以需要保存页面
			session.setAttribute("page", file);    //为什么这边写uri和file效果一样
			//解决非登录页面验证码的出现问题
//			**********************************加减验证码*******************************
			req.getRequestDispatcher("userlogin.jsp").forward(req, resp);
			return;
		}
		//chain链，filter一条一条往下传
		chain.doFilter(request, response);
		
	}

	
	public void init(FilterConfig filterConfig) throws ServletException {
		//从web.xml文件中读取配置信息
		ignorepages = filterConfig.getInitParameter("ignorepages");
		if(!ignorepages.equals("")){
			ignorepageArray = ignorepages.split(",");
		}
//		System.out.println(ignorepageArray);
	}
}
