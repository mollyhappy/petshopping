<%@ page language="java" contentType="text/html; charset=gbk"
    pageEncoding="gbk"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gbk">
<title>注册</title>
<link   rel="stylesheet"   href="css/zhuce.css"></link>
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript">
function check(){
    if(document.getElementById("t1-2").value==""){
        alert("学号输入不能为空！");
    document.getElementById("t1-2").focus();
        return false;
}
    else if(document.getElementById("t2-2").value==""){
        alert("密码输入不能为空！");
    document.getElementById("t2-2").focus();
        return false;}
    else if(document.getElementById("t3-2").value!==document.getElementById("t2-2").value){
        alert("两次密码输入不同！");
    document.getElementById("t3-2").focus();
        return false;}
    else if(document.getElementById("t4-2").value==""){
        alert("邮箱输入不能为空！");
    document.getElementById("t4-2").focus();
        return false;}
    else if(document.getElementById("t5-2").value==""){
        alert("验证码输入不能为空！");
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
 <p class="zhucw">用户注册</p>
  <div class="header">
        <div class="header-1"><</div>
              <div class="header-2"></div>
    </div> 
    <div class="t1">
    <span class="t1-1"> 账号 </span>  
    <span class="t11"><input type="text" id="t1-2" placeholder="请输入您的用户名 " name="username">
   </span></div>  
    
       <div class="t2">
    <span class="t1-1">密码 </span>  <input type="password" id="t2-2" placeholder="密码为数字和字母组合最多16位" name="password">
    </div> 
    <div class="t3">
    <span class="t1-1">请再次确认密码 </span>  <input type="password" id="t3-2" placeholder="">
    </div> 
    <div class="t4">
    <span class="t1-1">邮箱 </span>  <input type="text" id="t4-2" placeholder="支持邮箱格式...." name="email">
    <input type="button" id="t4-3" value="<%=code %>">
    </div>
    
    <div class="t5">
     <span class="t1-1">验证码</span>  
    <input type="text" id="t5-2" name="codetext">  
    </div>
    
     
    <div class="tijiao">
  <input type="submit" value="提交" class="butt" onclick="return check()">
   </div>
  <div class="lianjie">
   <a href="userlogin.jsp" class="log-link">已有账号，点此登录</a>
   </div>
   </form>   
</body>
</html>
