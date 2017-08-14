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
    <span class="memgmao1"><a href="buou1.jsp">布偶猫Ragdoll</a></span> 
    <span class="memgmao2"><a href="">俄罗斯蓝猫Russian Blue</a></span> 
    <span class="memgmao3"><a href="">英格兰折耳猫:Scottsish Fold|Snooks</a></span>  
    <span class="memgmao4"><a href="">曼赤肯猫 munchkin</a></span>  
    <span class="memgmao5"><a href="">波斯猫 persian cat</a></span> 
    <span class="memgmao6"><a href="">美国短毛猫AmericanShorthair</a></span> 
 </div>
      
 <div class="gou">
    <span class="menggou"><a href="">萌狗</a></span>
    <span class="menggou1"><a href="">哈士奇Siberian Husky</a></span> 
    <span class="menggou2"><a href="alasijia.jsp">阿拉斯加Alaskan Husky </a></span> 
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
<!-- 全部商品 -->
<div class="shp">
 <div class="shpword">商品展示</div>   
</div>
<div class="bar"><img src="images/bar.jpg" ></div>
<div class="shopping">
	    <div class="s1">
	      <div class="s1-1"><img src="images/AlaskanM1.jpg"/></div>  
	        <div class="s1-2">
	        <div class="s1a">阿拉斯加雪橇犬Alaskan Husky </div>
	        <div class="s1b">大型犬&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;寿命：12～20年</div>
	        <p>阿拉斯加雪橇犬结实、有力、肌肉发达而且胸很深。当它们站立时，头部竖直，眼神显得警惕、好奇，给人的感觉是充满活力而且非常傲娇。头部宽阔，耳朵呈三角形，警惕状态时保持竖立。口吻大，宽度从根部向鼻尖渐收，口吻既不显得长而突出，也不显得粗短。被毛浓密，披毛有足够的长度以保护内层柔软的底毛。阿拉斯加雪橇犬有各种不同的颜色，如灰、黑白、红棕。</p>
	        <a href="alasijia.jsp">更多</a>
	        </div>
	    </div>
		 
       <div class="s2">
	   <div class="s2-1"><img src="images/Ragdoll1.jpg"/></div>
	        <div class="s2-2">
	            <div class="s1a">布偶猫  Ragdoll </div>
	        <div class="s1b">长毛猫&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;寿命：12～15年</div>
	        <p>布偶猫，发源于美国，又称“布拉多尔猫”，是一种杂交品种。是现存体型最大、体重最重的猫之一。头呈楔形，眼大而圆，被毛丰厚，四肢较长且富有肉感，尾长，身体柔软，毛色有重点色、手套色或双色等等。布偶猫较为温顺好静，对人友善。其美丽优雅又非常类似于狗的性格而又被称为"仙女猫"，"小狗猫"。特殊的外貌和温和的性格是布偶猫最大的特点之一。</p>
	        <a href="buou1.jsp">更多</a>
	            
	        </div>
	    </div>
	    
	    <div class="s3">
	    <div class="s3-1"> <img src="images/Munchkin2.jpg"/></div>
	        <div class="s3-2">
	            <div class="s1a">美国短毛猫 American Shorthair </div>
	        <div class="s1b">短毛猫&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;寿命：15～20年</div>
	        <p>美国短毛猫（American Shorthair）是原产美国的一种猫，其祖先为欧洲早期移民带到北美的猫种，与英国短毛猫和欧洲短毛猫同类。据记载，五月花号上携带了数只猫以帮助除鼠。该品种的猫是在街头巷尾收集来的猫当中选种、并和进口品种如英国短毛猫、缅甸猫和波斯猫杂交培育而成。美国短毛猫素以体格魁伟，骨胳粗壮，肌肉发达，生性聪明，性格温顺而著称，是短毛猫类中大型品种。被毛厚密，毛色多达30余种，其中银色条纹品种尤为名贵。</p>
	        <a href="">更多</a>
	        </div>
	    </div>
		  
		  <div class="s4">
	        <div class="s4-1"> <img src="images/Poodle1.jpg"/></div>  
	        <div class="s2-2">
	            <div class="s1a">贵宾犬Poodle </div>
	        <div class="s1b">小型犬&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;寿命：13～20年</div>
	        <p>贵宾犬，Poodle，也称“贵妇犬”，又称“卷毛狗”。它是聪明而善解人意的犬种。多年以来，它一直被认为是法国的国犬。贵宾犬根据体型大小被AKC标准分为标准型，迷你型，玩具型三种。而FCI把它们分为大型，中型，迷你型，玩具型四种。贵宾犬气质独特，造型多变，赢得了许多人的欢心，给人一种漂亮的、聪明的印象。</p>
	        <a href="">更多</a>
	        </div>
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
   
  <!-- <div class="sant">
      正品保障&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;三十小时包退换&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;四十小时发货
  </div>-->
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