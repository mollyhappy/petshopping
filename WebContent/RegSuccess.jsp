<%@ page language="java" contentType="text/html; charset=gbk"
    pageEncoding="gbk"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gbk">
<title>Insert title here</title>
<link   rel="stylesheet"   href="CSS/zhuce.css"></link>
</head>
<body>
  <div class="log">
   <h1 >您已注册成功！</h1> 
   </div>
<!--
   <span id="totalSecond">
   3秒后返回主页
   </span>
-->
<div class="log-1">
<span id="totalSecond">5</span>
<span id="tocode">
    秒后跳转登录
</span>
</div>
</body>
</html>
<script language="javascript" type="text/javascript"> 
var second = document.getElementById('totalSecond').textContent; 
 
if (navigator.appName.indexOf("Explorer") > -1)  { 
    second = document.getElementById('totalSecond').innerText; 
} else { 
    second = document.getElementById('totalSecond').textContent; 
} 
 
setInterval("redirect()", 1000); 
function redirect() { 
if (second < 0) { 
    location.href = 'userlogin.jsp'; 
} else { 
    if (navigator.appName.indexOf("Explorer") > -1) { 
        document.getElementById('totalSecond').innerText = second--; 
    } else { 
        document.getElementById('totalSecond').textContent = second--; 
    } 
} 
} 
</script>