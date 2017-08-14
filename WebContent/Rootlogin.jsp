<%@ page language="java" contentType="text/html; charset=gbk"
    pageEncoding="gbk"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css/Rootlogin.css">
      	<script src="js/jquery-1.8.2.min.js"></script>
        <script src="js/supersized.3.2.7.min.js"></script>
        <script src="js/supersized-init.js"></script>

    </head>

    <body>

        <div class="page-container">
            <h1>¹ÜÀíÔ±µÇÂ¼</h1>
            <form action="rootQuery" method="post">
                <input type="text" name="username" class="username" placeholder="ÓÃ»§Ãû">
                <input type="password" name="password" class="password" placeholder="ÃÜÂë">
                <div  class="pare"><input type="checkbox" class="checkb">
                <div class="passrew">¼Ç×¡ÃÜÂë</div>
                
                </div>
                <button type="submit">Ìá½»</button>
                
            </form>
          
        </div>
		
    </body>

</html>