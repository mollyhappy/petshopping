<%@ page language="java" contentType="text/html; charset=gbk"
    pageEncoding="gbk"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gbk">
<title>Insert title here</title>
 <link  rel="stylesheet"   href="css/gouwuche.css">
   <link  rel="stylesheet"   href="css/index.css"> 
     <script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/lunbo.js"></script>
 <script type="text/javascript" src="js/count.js"></script>
<script type="text/javascript">
	function buy(){
		document.form2.action="saleCart";
		document.form2.submit();
	}
	function remove(){
		document.form2.action="deleteCart";
		document.form2.submit();
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
  
<div class="shword">
    全部商品
</div>
 
   <form name="form2" action="" method="get"> 
  <div class="catbox">
      <table id="cartTable">
        <thead>
        <tr>
        <th><label> 
        <input type="checkbox" class="check-all check">&nbsp;&nbsp;&nbsp;&nbsp;全选</label></th>
  <!--        <span></span>-->
            <th>商品信息</th>
              <th>单价</th>
               <th>数量</th>
                <th>总价</th>
                 <th>操作</th>
            </tr>
      </thead>
 
	    <tbody>
	     
       <c:forEach var="c" items="${sessionScope.queryCart}">
                <tr>
         		<td class="checkbox">
                   <input type="checkbox" class="check-one check" name='p_kid' value="${c.c_id}">
                   </td>	
                	<td class="goods">
                	<img src="${c.c_path}" />
                	<div>${c.c_kinds}</div>
                	</td> 	     			
					<%-- <td>${c.u_name}</td> 
					<td>${c.c_id}</td> --%>
					<td class="price">${c.c_price}</td>
					
					<td class="count">
					<span class="reduce">-</span>
					<!--${c.c_num}-->
					<input class="count-input" type="text" value="${c.c_num}"/>
					<span class="add">+</span>
					</td>
					<td class="subtotal">${c.c_total}</td>
					 <td class="operation">
					 <div><a href="javascript:buy();"><input type="button" value="购买" class="buy"></a></div>
					<div><a href="javascript:remove();"><input type="button" value="删除" class="del"></a></div>
					<!--  <span class="delete">删除</span> -->
					 </td>
					 </tr>
					
         </c:forEach>
      </tbody>
      </table>
      <div class="foot" id="foot">
    <label class="fl select-all"><input type="checkbox" class="check-all check"/>&nbsp;&nbsp;全选</label>
    <a class="fl delete" id="deleteAll" href="javascript:;">删除</a>
    <div class="fr closing" onclick="getTotal();"><div><a href="javascript:buy();"><input type="button" value="结算" class="buy1"></a></div>
</div>
    <input type="hidden" id="cartTotalPrice" />
    <div class="fr total">合计：￥<span id="priceTotal">0.00</span></div>
    <div class="fr selected" id="selected">已选商品<span id="selectedTotal">0</span>件<span class="arrow up">︽</span><span class="arrow down">︾</span></div>
    <div class="selected-view">
      <div id="selectedViewList" class="clearfix">
        <div><img src="images/1.jpg"><span>取消选择</span></div>
      </div>
      <span class="arrow">◆<span>◆</span></span> </div>
  </div>
   </div>
  
  	</form> 
  
  
 
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
   <div　id="banquan">&copy;南京晓庄学院ZLM版权所有</div>
</div>
</body>
</html>