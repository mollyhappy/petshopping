<%@ page language="java" contentType="text/html; charset=gbk"
    pageEncoding="gbk"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gbk">
<title>ע��</title>
<link   rel="stylesheet"   href="css/zhuce.css"></link>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript">
function check(){
    if(document.getElementById("t1-2").value==""){
        alert("ѧ�����벻��Ϊ�գ�");
    document.getElementById("t1-2").focus();
        return false;
}
    else if(document.getElementById("t2-2").value==""){
        alert("�������벻��Ϊ�գ�");
    document.getElementById("t2-2").focus();
        return false;}
    else if(document.getElementById("t3-2").value!==document.getElementById("t2-2").value){
        alert("�����������벻ͬ��");
    document.getElementById("t3-2").focus();
        return false;}
    else if(document.getElementById("t4-2").value==""){
        alert("�������벻��Ϊ�գ�");
    document.getElementById("t4-2").focus();
        return false;}
    else if(document.getElementById("t5-2").value==""){
        alert("��֤�����벻��Ϊ�գ�");
    document.getElementById("t5-2").focus();
        return false;}
}
</script>

</head>
<body>
 <%
     	String code=(String)session.getAttribute("code");
  %>
 <form action="register" method="post">
 <p class="zhucw">�û�ע��</p>
  <div class="header">
        <div class="header-1"><</div>
              <div class="header-2"></div>
    </div> 
    <div class="t1">
    <span class="t1-1"> �˺� </span>  
    <span class="t11"><input type="text" id="t1-2" placeholder="�����������û��� " name="username">
   </span></div>  
    
       <div class="t2">
    <span class="t1-1">���� </span>  <input type="password" id="t2-2" placeholder="����Ϊ���ֺ���ĸ������16λ" name="password">
    </div> 
    <div class="t3">
    <span class="t1-1">���ٴ�ȷ������ </span>  <input type="password" id="t3-2" placeholder="">
    </div> 
    <div class="t4">
    <span class="t1-1">���� </span>  <input type="text" id="t4-2" placeholder="֧�������ʽ...." name="email">
    <input type="button" id="t4-3" value="<%=code %>">
    </div>
    
    <div class="t5">
     <span class="t1-1">��֤��</span>  
    <input type="text" id="t5-2" name="codetext">  
    </div>
    
     
    <div class="tijiao">
  <input type="submit" value="�ύ" class="butt" onclick="return check()">
   </div>
  <div class="lianjie">
   <a href="userlogin.jsp" class="log-link">�����˺ţ���˵�¼</a>
   </div>
   </form>   
</body>
</html>
