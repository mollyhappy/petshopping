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
	/* û���ύ��ť������ */
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
  

  <div class="ti">��ȷ�����Ķ�����Ϣ</div>
  
    <div class="dida">
    <div class="th">
  <span>��Ʒ��Ϣ</span>
   <span>����</span>
   <span>����</span>
  <span>�µ���</span>
  <span>�ܼ�</span>
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
       
       <div class="titt"> <p>������������Ϣ</p></div> 
	<div class="info">
		<div class="nu">
			<div >��ϵ��&nbsp;&nbsp;&nbsp;:<input type="text" name="o_name"></div>
			<div>��ϵ�绰:<input type="text" name="o_phone"></div>
			<div>�ͻ���ַ:<input type="text" name="o_address"></div>
		</div>
		<div class="choose">
			<span><a href="javascript:buy();"><input type="button" value="ȷ��"/></a></span>
			<span><input type="reset" value="���"/></span>
			<span><a href="javascript:remove();"><input type="button" value="����"/></a></span>
		</div>
	</div>
</form>
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