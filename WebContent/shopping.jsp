<%@ page language="java" contentType="text/html; charset=gbk"
    pageEncoding="gbk"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gbk">
<title>Document</title>
<link rel="stylesheet" href="css/index.css">
<link rel="stylesheet" href="css/shopping.css">
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/xiala.js"></script> 
<script type="text/javascript" src="js/lunbo.js"></script>
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
  <div class="inp"> <input type="text"></div>
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
      <span class="tiao">挑选爱宠</span>
  </div> 
  
<div class="shangpxiala">
    
 <div class="mao">
    <span class="mengmao"><a href="">萌猫</a></span>
    <span class="memgmao1"><a href="">布偶猫Ragdoll</a></span> 
    <span class="memgmao2"><a href="">俄罗斯蓝猫Russian Blue</a></span> 
    <span class="memgmao3"><a href="">英格兰折耳猫:Scottsish Fold|Snooks</a></span>  
    <span class="memgmao4"><a href="">曼赤肯猫 munchkin</a></span>  
    <span class="memgmao5"><a href="">波斯猫 persian cat</a></span> 
    <span class="memgmao6"><a href="">美国短毛猫AmericanShorthair</a></span> 
 </div>
      
 <div class="gou">
    <span class="menggou"><a href="">萌狗</a></span>
    <span class="menggou1"><a href="">哈士奇Siberian Husky</a></span> 
    <span class="menggou2"><a href="">阿拉斯加Alaskan Husky </a></span> 
    <span class="menggou3"><a href="">金毛犬Golden Retriever </a></span>  
    <span class="menggou4"><a href="">柴犬Shiba Inu</a></span>  
    <span class="menggou5"><a href="">泰迪 Teddy Dog</a></span> 
    <span class="menggou6"><a href="">博美犬Pomeranian </a></span> 
 </div> 
</div>
   <div class="focus">
	<div class="images">
    	<div class="item"><img  src="images/bg1.jpg" class="img"/></div>
    	<div class="item"><img src="images/bg22.jpg" class="img"/></div>
    	<div class="item"><img src="images/bg3.jpg" class="img"/></div>
    </div>
    <div class="title">
    	<p>请用心对待每一个你领养的宠物</p>
        <p>你的人生很长，它的人生很短</p>
        <p>对它们来说，你是它们的所有</p>
    </div>
    <div class="control">
    	<span>1</span>
        <span>2</span>
        <span>3</span>
    </div>
</div>

<div class="shp">
 <div class="shpword">商品展示</div>   
</div>
<div class="bar"><img src="images/bar.jpg" ></div>
<!-- 全部商品需写样式，还需加入购物车的图标啥啥的，可依据马宵写的首页 -->
<div class="shoping"><!-- 这是一个大的DIV，可按情况保留，或修改 -->
	<!-- 取出数据 -->
	<div class="shop1">
	<c:forEach var="g" items="${sessionScope.AllProducts}">
		<div>
			
			 <div class="ii"><img src="${g.p_path }"/><a href="addCart?p_kid=${g.p_kid}"></a></div>
			 <div class="sp1">
			<span class="hh"> ${g.p_kid}</span> 
			<span>  ${g.p_kind}</span> 
			 <span class="hh"> ${g.p_id}</span> 
			 <span> ${g.p_age}</span> 
			 <div class="miao">  ${g.p_sex}</div> 
			 <div class="pp">  ${g.p_price}元</div> 
			 <div> <a href="">更多</a></div>
			  </div> 
			</div>
	</c:forEach>
	
 </div>
</div>
	<!-- 分页需写样式 -->
	 
	<div class="page">
	<ul>
	<li><a href='shopping1.jsp'>1</a></li>
	<li><a href='good?showcount=4&pageon=2'>2</a></li>
	<li><a href='good?showcount=4&pageon=3'>3</a></li>
	<li><a href='good?showcount=4&pageon=4'>4</a></li>	
	</ul>
	<div class="pages">共四页</div>
	</div>
	
<div class="center">
      <div class="centerword">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;我们的服务在于用心，宠物售出后衣食住行医疗皆有保障</div>
      <div class="centerword">Our service is the heart, after the sale of basic necessities of life are pet medical insurance </div>
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
   <div class="banquan">&copy;南京晓庄学院ZLM版权所有</div>
</div> 

</body>
</html>