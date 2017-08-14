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
 <span><a href="Pet">��Ϊ��ҳ&nbsp;&nbsp;&nbsp;</a></span> 
   <span><a href="">�ղر�վ</a></span>
   </div>
   <div class="head-lef">
  <c:choose>
   	<c:when test="${sessionScope.username } == null">
   		<span class="header"><a href="userlogin.jsp">��¼&nbsp;&nbsp;&nbsp;</a></span> 
   		<span><a href="Register.jsp">ע��</a></span>
   	</c:when>
   	<c:otherwise>
   		<span>Welcome!&nbsp;&nbsp;&nbsp;${sessionScope.username }</span>	
   	</c:otherwise>
   </c:choose>
   </div>
    
     <div class="header-Con"><img src="images/logo.jpg" alt="" class="logo"></div>
    <div class="word">��Ʒ����ѡ������</div>
   </div>
   <div class="search">
  <div class="inp"> <input type=text  placeholder="Search"></div>
<div class="sousuo"><input type="submit" class="searchbutton" value="����"></div> 
   </div>
 <div class="gouwuche">
  <div><img src="images/gouwuche.jpg" class="gowuim"></div>
  <div class="gowwuword"><a href="queryCart">���ﳵ</a></div>
  <div ><img src="images/j.jpg" class="jiangim"></div>
  <div class="jiangword">Ʒ��</div>
  </div>
  
  <div class="nave">
     <ul id="nav">
        <li id="show"><a href="Pet">��ҳ</a></li>
        <li><a href="shopping1.jsp">ȫ����Ʒ</a>
          
       </li>
        <li><a href="test.jsp">����</a>
      </li>
            <li><a href="">���԰�</a>
              <ul>
         <li><a href="#">���߽���</a></li> 
             <li><a href="#">�ȳ�֮��</a></li> 
             <li><a href="#">�������</a></li>
            </ul></li>
            <li><a href="">��������</a>
               <ul>
         <li><a href="#">��վ����</a></li> 
         <li><a href="#">��վ��Ϣ</a></li> 
            </ul></li>
           
    </ul>
</div>
    <div class="shangp">
     <span ><img src="images/dao.jpg" class="dao"></span>
      <span class="tiao"><a href="">��ѡ����</a></span>
  </div> 
  
<div class="shword">
    ȫ����Ʒ
</div>
 
   <form name="form2" action="" method="get"> 
  <div class="catbox">
      <table id="cartTable">
        <thead>
        <tr>
        <th><label> 
        <input type="checkbox" class="check-all check">&nbsp;&nbsp;&nbsp;&nbsp;ȫѡ</label></th>
  <!--        <span></span>-->
            <th>��Ʒ��Ϣ</th>
              <th>����</th>
               <th>����</th>
                <th>�ܼ�</th>
                 <th>����</th>
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
					 <div><a href="javascript:buy();"><input type="button" value="����" class="buy"></a></div>
					<div><a href="javascript:remove();"><input type="button" value="ɾ��" class="del"></a></div>
					<!--  <span class="delete">ɾ��</span> -->
					 </td>
					 </tr>
					
         </c:forEach>
      </tbody>
      </table>
      <div class="foot" id="foot">
    <label class="fl select-all"><input type="checkbox" class="check-all check"/>&nbsp;&nbsp;ȫѡ</label>
    <a class="fl delete" id="deleteAll" href="javascript:;">ɾ��</a>
    <div class="fr closing" onclick="getTotal();"><div><a href="javascript:buy();"><input type="button" value="����" class="buy1"></a></div>
</div>
    <input type="hidden" id="cartTotalPrice" />
    <div class="fr total">�ϼƣ���<span id="priceTotal">0.00</span></div>
    <div class="fr selected" id="selected">��ѡ��Ʒ<span id="selectedTotal">0</span>��<span class="arrow up">��</span><span class="arrow down">��</span></div>
    <div class="selected-view">
      <div id="selectedViewList" class="clearfix">
        <div><img src="images/1.jpg"><span>ȡ��ѡ��</span></div>
      </div>
      <span class="arrow">��<span>��</span></span> </div>
  </div>
   </div>
  
  	</form> 
  
  
 
<div class="center">
      <div class="centerword">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;���ǵķ����������ģ������۳�����ʳס��ҽ�ƽ��б���</div>
      <div class="centerword">Our service is the heart, after the sale of basic necessities of life are pet medical insurance </div>
  </div>
  <div class="footer">
   <div class="wen">���˽������Ϣ����������</div> 
   
   <div class="sos">
   <div class="sinp"><input type="text"></div> 
    <div class="sod"><input type="button" class="sub" value="����Ѱ��"></div>
   </div>
   
   <div class="guanjian">��˳Сè&nbsp;&nbsp;&nbsp;&nbsp;��Ц����&nbsp;&nbsp;&nbsp;&nbsp;���õ�è&nbsp;&nbsp;&nbsp;&nbsp;
   �����Ĺ�</div>
   
  <div class="santu">
  <div class="santu1">
  <div class=""><img src="images/zhen.jpg" ></div>
  <div>��Ʒ����</div>
  </div>
  <div class="santu2">
  <div class=""><img src="images/zhen2.jpg" ></div>
  <div>30��������b���˻�</div>
  </div>
  <div class="santu3">
  <div class=""><img src="images/zhen3.jpg" ></div>
  <div>48Сʱ���緢��</div>
  </div>
  </div>
  
  
  <br>
   <div��id="banquan">&copy;�Ͼ���ׯѧԺZLM��Ȩ����</div>
</div>
</body>
</html>