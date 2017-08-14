<%@ page language="java" contentType="text/html; charset=gbk"
    pageEncoding="gbk"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gbk">
<title>Insert title here</title>
<link rel="stylesheet" href="css/index.css">
<link rel="stylesheet" href="css/test.css">
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/xiala.js"></script> 
<script type="text/javascript" src="js/lunbo.js"></script>
<script type="text/javascript">
	/* 没有提交按钮，所以 */
	function buy(){
		document.form3.action="buyCart";
		document.form3.submit();
	}
	function remove(){
		document.form3.action="deleteCart";
		document.form3.submit();
	}
</script>
</head>
<body>
<div class="header">
 <div class="head-rgh">
 <span><a href="Pet">设为首页&nbsp;&nbsp;&nbsp;</a></span> 
   <span><a href="">收藏本站</a></span>
   </div>
   <div class="head-lef">
  <c:choose>
   	<c:when test="${sessionScope.username } == null">
   		<span class="header"><a href="userlogin.jsp">登录&nbsp;&nbsp;&nbsp;</a></span> 
   		<span><a href="Register.jsp">注册</a></span>
   	</c:when>
   	<c:otherwise>
   		<span>Welcome!&nbsp;&nbsp;&nbsp;${sessionScope.username }</span>	
   	</c:otherwise>
   </c:choose>
   </div>
    
     <div class="header-Con"><img src="images/logo.jpg" alt="" class="logo"></div>
    <div class="word">正品·优选·用心</div>
   </div>
   <div class="search">
  <div class="inp"> <input type=text  placeholder="Search"></div>
<div class="sousuo"><input type="submit" class="searchbutton" value="搜索"></div> 
   </div>
 <div class="gouwuche">
  <div><img src="images/gouwuche.jpg" class="gowuim"></div>
  <div class="gowwuword"><a href="queryCart">购物车</a></div>
  <div ><img src="images/j.jpg" class="jiangim"></div>
  <div class="jiangword">品质</div>
  </div>
  
  <div class="nave">
     <ul id="nav">
        <li id="show"><a href="Pet">首页</a></li>
        <li><a href="shopping1.jsp">全部商品</a>
          
       </li>
        <li><a href="test.jsp">订单</a>
      </li>
            <li><a href="">留言板</a>
              <ul>
         <li><a href="#">在线交流</a></li> 
             <li><a href="#">萌宠之家</a></li> 
             <li><a href="#">网络红人</a></li>
            </ul></li>
            <li><a href="">关于我们</a>
               <ul>
         <li><a href="#">网站导航</a></li> 
         <li><a href="#">网站信息</a></li> 
            </ul></li>
           
    </ul>
</div>
   
    <div class="shangp">
     <span ><img src="images/dao.jpg" class="dao"></span>
      <span class="tiao"><a href="">挑选爱宠</a></span>
  </div> 
  

  <div class="ti">请确认您的订单信息</div>
  
    <div class="dida">
    <div class="th">
  <span>商品信息</span>
   <span>单价</span>
   <span>数量</span>
  <span>下单者</span>
  <span>总价</span>
  </div>
   
<form name="form3" action="" method="get">
<c:forEach var="c" items="${sessionScope.dingdan}">
				<%-- 	<div><input type="hidden" name="p_kid" value="${c.c_id}"></div>
                	<div><img src="${c.c_path}" /></div> 	     			
					<div>${c.u_name}</div> 	
					<div>${c.c_kinds}</div> 
					<div>${c.c_id}</div> 
					<div>${c.c_price}</div> 
					<div>${c.c_num}</div> 
					<div>${c.c_total}</div>  --%>
					<div><input type="hidden" name="p_kid" value="${c.c_id}"></div>
                	<div class="i1">
                	<img src="${c.c_path}" />
                	<div>${c.c_kinds}</div>
                	</div>
                	<div class="d2">	     		
					<span >${c.c_price}</span> 
					<span>${c.c_num}</span> 
					<span>${c.u_name}</span>  
					</div>
						
					<div class="money">${c.c_total}</div> 
					
						
         </c:forEach>
       
       <div class="titt"> <p>请完善下列信息</p></div> 
	<div class="info">
		<div class="nu">
			<div >联系人&nbsp;&nbsp;&nbsp;:<input type="text" name="o_name"></div>
			<div>联系电话:<input type="text" name="o_phone"></div>
			<div>送货地址:<input type="text" name="o_address"></div>
		</div>
		<div class="choose">
			<span><a href="javascript:buy();"><input type="button" value="确认"/></a></span>
			<span><input type="reset" value="清空"/></span>
			<span><a href="javascript:remove();"><input type="button" value="返回"/></a></span>
		</div>
	</div>
</form>
</div>


<div class="footer">
   <div class="wen">想了解更多信息，请点击搜索</div> 
   
   <div class="sos">
   <div class="sinp"><input type="text"></div> 
    <div class="sod"><input type="button" class="sub" value="点我寻找"></div>
   </div>
   
   <div class="guanjian">温顺小猫&nbsp;&nbsp;&nbsp;&nbsp;搞笑狗狗&nbsp;&nbsp;&nbsp;&nbsp;活泼的猫&nbsp;&nbsp;&nbsp;&nbsp;
   聪明的狗</div>
   

  <div class="santu">
  <div class="santu1">
  <div class=""><img src="images/zhen.jpg" ></div>
  <div>正品保障</div>
  </div>
  <div class="santu2">
  <div class=""><img src="images/zhen2.jpg" ></div>
  <div>30天无理由b包退换</div>
  </div>
  <div class="santu3">
  <div class=""><img src="images/zhen3.jpg" ></div>
  <div>48小时闪电发货</div>
  </div>
  </div>
  
  
  <br>
   <div　id="banquan">&copy;南京晓庄学院ZLM版权所有</div>
</div>


</body>
</html>