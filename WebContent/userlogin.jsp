<%@ page language="java" contentType="text/html; charset=gbk"
    pageEncoding="gbk"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>Document</title>
    <link rel="stylesheet" href="css/Userlogin.css"></link>    
</head>
<body>
   <form action="login" method="post">
    <div class="container">
        <div class="head">登&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;录</div>
       <div class="zhanghao">
        <input type="text" placeholder="账号" class="text" name="username">
        </div>
        <div class="mima">
         <input type="password" placeholder="密码" class="text" name="password">
         </div>
         <div class="reme">
         <input type="checkbox" class="fuxuan">
         <span>两分钟内记住密码</span>
          </div>
           <div class="denglu">
          <input type="submit" value="点此登录" class="check">
           </div>
    <div class="info"><a href="#">更多</a></div>
    <div class="logo">
    <div class="img1"><img src="images/use1.png"></div>
    <div class="img2"><img src="images/use2.png"></div>
    <div class="img3"><img src="images/use3.png"></div>
    </div>
    </div>
    </form>
</body>
</html>