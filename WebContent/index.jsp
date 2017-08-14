<%@ page language="java" contentType="text/html; charset=gbk"
    pageEncoding="gbk"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gbk">
<title>Document</title>
<link rel="stylesheet" href="css/index.css">
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
		<span class="header"><a href="userlogin.jsp">登录&nbsp;&nbsp;&nbsp;</a></span> 
   		<span><a href="Register.jsp">注册</a></span>
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
    	<div class="item"><img src="images/4.jpg" class="img"/></div>
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
<div class="remen">
    <div class="liwu"><img src="images/liwu.jpg" class="liwuimage"></div>
    <div class="liwuword">热门推荐</div>
    <div><hr></div>  
</div>

 
<div class="regou">
   <div class="remaoword">萌狗区</div>
</div>
<div class="remaoimg">
	<div class="gouimg">
	  <ul>
       <c:forEach var="h" items="${sessionScope.Hot_goods}" begin="0" end="3">       		     			
					<li><img src="${h.p_path }" /></li> 		
       </c:forEach>
      </ul>
    </div>
</div>

<div class="miaoshu">
    <div class="m1"><a href="alasijia.jsp">阿拉斯加 体型：大型犬 智商：第50名<br>价格：1000-10000<br>>>更多</a></div>
     <div class="m2"><a href="">金毛  体型：大型犬 智商：第4名<br>价格：1300-7500<br>>>更多</a></div>
      <div class="m3"><a href="">柴犬 体型：中型犬 智商：第8名<br>价格：6000-9000<br>>>更多</a></div>
       <div class="m4"><a href="">博美 体型：超小型犬 智商：第23名<br>价格：12000-20000<br>>>更多</a></div>
</div>


<div class="remao">
    <div class="remaoword">萌猫区</div>
</div>
<div class="remaoimg">
	<div class="gouimg">
	  <ul>
       <c:forEach var="h" items="${sessionScope.Hot_goods}" begin="4" end="7">       		     			
					<li><img src="${h.p_path }" /></li> 		
       </c:forEach>
      </ul>
    </div>
</div>

<div class="miaoshu">
    <div class="m1"><a href="">阿拉斯加 体型：大型犬 智商：第50名<br>价格：1000-10000<br>>>更多</a></div>
     <div class="m2"><a href="">金毛  体型：大型犬 智商：第4名<br>价格：1300-7500<br>>>更多</a></div>
      <div class="m3"><a href="">柴犬 体型：中型犬 智商：第8名<br>价格：6000-9000<br>>>更多</a></div>
       <div class="m4"><a href="">博美 体型：超小型犬 智商：第23名<br>价格：12000-20000<br>>>更多</a></div>
</div>
   
<div class="meng">
   <div class="biaoti">————萌宠资讯————
   </div>
   <div class="pp">动物是人类的朋友，拒绝伤害</div>
   </div> 
<div class="about">
   <div class="dog">
     <span class="dog1"><img src="images/7.jpg"></span>
     <span class="dog2"><h3>狗的寿命能活多久</h3><br>
     <p>遗憾的是目前还没有确切的回答这个问题，这是因为，狗的实际寿命取决于品种和大小。小型犬是犬体重《10公斤，如腊肠犬，Papillions和吉娃娃。11-25kgs之间的狗被认为是中等规模的品种像边境牧羊犬</p>
     
     </span> 
   </div> 
    <div class="cat">
     <span class="cat1"> <img src="images/buou2.jpg"></span>
     <span class="cat2"><h3>布偶猫的养护</h3><br>
     <p>布偶猫其实是一种非常甜蜜的猫咪，它们不喜欢孤独寂寞，渴望与主人互动玩乐。因此，在饲养的过程中，需要主人经常抽取一定的时间，来陪猫咪互动交流，彼此进行沟通拉近感情。</p>
     </span> 
   </div> 
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