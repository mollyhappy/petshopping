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
  <div class="inp"> <input type="text"></div>
<div class="sousuo"><input type="submit" class="searchbutton" value="����"></div> 
   </div>
 <div class="gouwuche">
  <div><img src="images/gouwuche.jpg" class="gowuim"></div>
  <div class="gowwuword"><a href="gouwuche.jsp">���ﳵ</a></div>
  <div ><img src="images/j.jpg" class="jiangim"></div>
  <div class="jiangword">Ʒ��</div>
  </div>
  
  <div class="nave">
     <ul id="nav">
        <li id="show"><a href="Pet">��ҳ</a></li>
        <li><a href="shopping1.jsp">ȫ����Ʒ</a>
          
       </li>
        <li><a href="dingdan.jsp">����</a>
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
      <span class="tiao">��ѡ����</span>
  </div> 
  
<div class="shangpxiala">
    
 <div class="mao">
    <span class="mengmao"><a href="">��è</a></span>
    <span class="memgmao1"><a href="">��żèRagdoll</a></span> 
    <span class="memgmao2"><a href="">����˹��èRussian Blue</a></span> 
    <span class="memgmao3"><a href="">Ӣ�����۶�è:Scottsish Fold|Snooks</a></span>  
    <span class="memgmao4"><a href="">�����è munchkin</a></span>  
    <span class="memgmao5"><a href="">��˹è persian cat</a></span> 
    <span class="memgmao6"><a href="">������ëèAmericanShorthair</a></span> 
 </div>
      
 <div class="gou">
    <span class="menggou"><a href="">�ȹ�</a></span>
    <span class="menggou1"><a href="">��ʿ��Siberian Husky</a></span> 
    <span class="menggou2"><a href="">����˹��Alaskan Husky </a></span> 
    <span class="menggou3"><a href="">��ëȮGolden Retriever </a></span>  
    <span class="menggou4"><a href="">��ȮShiba Inu</a></span>  
    <span class="menggou5"><a href="">̩�� Teddy Dog</a></span> 
    <span class="menggou6"><a href="">����ȮPomeranian </a></span> 
 </div> 
</div>
   <div class="focus">
	<div class="images">
    	<div class="item"><img  src="images/bg1.jpg" class="img"/></div>
    	<div class="item"><img src="images/bg22.jpg" class="img"/></div>
    	<div class="item"><img src="images/bg3.jpg" class="img"/></div>
    </div>
    <div class="title">
    	<p>�����ĶԴ�ÿһ���������ĳ���</p>
        <p>��������ܳ������������ܶ�</p>
        <p>��������˵���������ǵ�����</p>
    </div>
    <div class="control">
    	<span>1</span>
        <span>2</span>
        <span>3</span>
    </div>
</div>
<!-- ������Ʒ -->
<div class="shopping">
	<c:forEach var="g" items="${sessionScope.PartProducts }">
		<table>
			<tr>
			  <td><img src="${g.p_path }"/></td>
			  <td>${g.p_kid}</td>
			  <td>${g.p_kind}</td>
			  <td>${g.p_id}</td>
			  <td>${g.p_age}</td>
			  <td>${g.p_num}</td>
			  <td>${g.p_sex}</td>
			  <td>${g.p_price}</td>
			</tr>
		</table>
	</c:forEach>
</div>
</body>
</html>