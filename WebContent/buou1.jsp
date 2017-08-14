<%@ page language="java" contentType="text/html; charset=gbk"
    pageEncoding="gbk"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gbk">
<title>Insert title here</title>
<meta name="keywords" content="">
<meta name="description" content="">
<meta name="copyright" content="" />
 <script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/lunbo.js"></script>
<script src="js/jquery-1.8.2.min.js"></script>
<script src="js/common.js"></script>

<link href="css/alasijia.css" rel="stylesheet" type="text/css" />
<script src="js/slider.js" type="text/javascript"></script> 
<!--<script type="text/javascript">
$(document).ready(function() {
$('#slider').slider({ speed: 500 });
});            
</script>-->
<script type="text/javascript">
  $(document).ready(function(){
	  var showproduct = {
		  "boxid":"showbox",
		  "sumid":"showsum",
		  "boxw":400,//宽度,该版本中请把宽高填写成一样
		  "boxh":400,//高度,该版本中请把宽高填写成一样
		  "sumw":60,//列表每个宽度,该版本中请把宽高填写成一样
		  "sumh":60,//列表每个高度,该版本中请把宽高填写成一样
		  "sumi":7,//列表间隔
		  "sums":5,//列表显示个数
		  "sumsel":"sel",
		  "sumborder":1,//列表边框，没有边框填写0，边框在css中修改
		  "lastid":"showlast",
		  "nextid":"shownext"
		  };//参数定义	  
	 $.ljsGlasses.pcGlasses(showproduct);//方法调用，务必在加载完后执行
  });
    $(document).ready(function() {
$('#slider').slider({ speed: 500 });
});
    function buyCart(){
    	document.form1.action="buycart.jsp";//地址信息页面
		document.form1.submit();
    }
    function addCart(){
    	document.form1.action="addCart";
		document.form1.submit();
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
  
<div class="di">
   <span class="d1"> 当前商品为:</span>
    <span class="d2">阿拉斯加</span>
</div>

<div style="width:600px; margin:0 auto;">
<!--<p>欢迎使用常用商品详情页商品放大镜效果，兼容IE6及以上版本</p>
<p style="padding-bottom:50px;">图片标签上请务必注意width和height的值，这是必要的值，图片随意形状，随意大小，但必须填写该两个值，图片个数大于1就行，数量不固定</p>-->
<!--页面必要代码,img标签上请务必带上图片真实尺寸px-->
<div id="showbox">
  <img src="images/buou/img01.jpg" width="300" height="300" />
  <img src="images/buou/img02.jpg" width="300" height="300" />
  <img src="images/buou/img03.jpg" width="430" height="430" />
  <img src="images/buou/img04.jpg" width="290" height="290" />
  <img src="images/buou/img05.jpg" width="300" height="300" />
  <img src="images/buou/img06.jpg" width="300" height="300" />
 
</div><!--展示图片盒子-->
<div id="showsum"></div><!--展示图片里边-->
<p class="showpage">
  <a href="javascript:void(0);" id="showlast"> < </a>
  <a href="javascript:void(0);" id="shownext"> > </a>
</p>
</div>
<div class="miaoshu">
   <div class="m1">布偶猫(又称“布拉多尔猫”)Ragdoll</div> 
   <div class="m2">【更多请联系qq:19902134】</div>
     <div class="m3">
     <span class="m3-1">宠物之家价格：</span>
    <!-- <img src="images/doller.jpg">-->
     <span class="m3-2">￥40000元 </span>
     <div class="m31">市场价：￥60000</div>
     </div>
     
     <!--                         加一个form表单                                                  -->
     <form name="form1" action="" method="get">
     <div class="time">年龄： 
     &nbsp;&nbsp;&nbsp;&nbsp;
     <select>
      <option>3个月以下</option>
      <option>三个月及以上</option>
      <option>六个月以上一年以下</option>
       <option>一年以上</option>
  </select></div>
     
    
    <div class="m4">购买数量: <input type="button" onclick="numDec()" value="-"  id="sus" >
   <input type="text" id="quantity" placeholder="0" name="count"/> 
   <input type="button" onclick="numAdd()" value="+" id="add">
   </div>  
    <div class="sdsd">金额总计: <span id="totalPrice">0</span></div>  
  <input type="hidden" value="40000" id="price" />
  <input type="hidden" value="2000011" name="p_kid">  
     <div class="buy">
    <div class="m6">
        <a href="javascript:buyCart();"><input type="button" value="立即购买"></a>
    </div>
     <div class="m7">
      <a href="javascript:addCart();"><img src="images/gouwuche.jpg">
        <input type="button" value="加入购物车">
        </a>
    </div>
    </div>
    </form>
    <div class="m8">☆收藏商品</div>
</div>
 

<div class="tuijian"><span class="tword">热销推荐</span></div>
<div id="slider">
	<div class="spic">
		<img src="images/buou1.jpg" />
		<a href="#">布偶猫</a>
	</div>
	<div class="spic">
		<img src="images/bosi.jpg" />
		<a href="#">波斯猫</a>
	</div>
	<div class="spic">
		<img src="images/eluo.jpg" />
		<a href="#">俄罗斯蓝猫</a>
	</div>
	 <div class="spic">
		<img src="images/5.jpg" />
		<a href="#">金毛</a>
	</div>
	<div class="spic">
		<img src="images/buou2.jpg" />
		<a href="#">布偶猫</a>
	</div>
	<div class="spic">
		<img src="images/photos/img02.jpg" />
		<a href="#">阿拉斯加</a>
	</div>    
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
<script type="text/javascript">  
/*或者不用jquery*/  
/*商品数量框输入*/  
function keyup(){  
    var quantity = document.getElementById("quantity").value;  
    if(isNaN(quantity) ||  parseInt(quantity)!=quantity || parseInt(quantity)<1){  
        quantity = 1;  
        return;  
    }  
    if(quantity>=10){  
        document.getElementById("quantity").value=quantity.substring(0,quantity.length-1);  
        alert("商品数量不能大于10");  
    }  
}  
  
/*商品数量+1*/  
function numAdd(){  
    var quantity = document.getElementById("quantity").value;  
    var num_add = parseInt(quantity)+1;  
    var price=document.getElementById("price").value;  
    if(quantity==""){  
        num_add = 1;  
    }  
    if(num_add>=10){  
        document.getElementById("quantity").value=num_add-1;  
        alert("商品数量不能大于10");  
    }else{  
        document.getElementById("quantity").value=num_add;  
        var Num=price*num_add;  
        document.getElementById("totalPrice").innerHTML=Num.toFixed(2);  
    }  
}  
/*商品数量-1*/  
function numDec(){  
    var quantity = document.getElementById("quantity").value;  
    var price=document.getElementById("price").value;  
    var num_dec = parseInt(quantity)-1;  
    if(num_dec>0){  
        document.getElementById("quantity").value=num_dec;  
        var Num=price*num_dec;  
         document.getElementById("totalPrice").innerHTML=Num.toFixed(2);  
    }  
}  
/*function show()  
{  
    document.getElementById("totalPrice").innerHTML=3.25*3;  
} */ 
</script>  
</body>
</html>
