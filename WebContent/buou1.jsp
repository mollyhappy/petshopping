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
		  "boxw":400,//���,�ð汾����ѿ����д��һ��
		  "boxh":400,//�߶�,�ð汾����ѿ����д��һ��
		  "sumw":60,//�б�ÿ�����,�ð汾����ѿ����д��һ��
		  "sumh":60,//�б�ÿ���߶�,�ð汾����ѿ����д��һ��
		  "sumi":7,//�б���
		  "sums":5,//�б���ʾ����
		  "sumsel":"sel",
		  "sumborder":1,//�б�߿�û�б߿���д0���߿���css���޸�
		  "lastid":"showlast",
		  "nextid":"shownext"
		  };//��������	  
	 $.ljsGlasses.pcGlasses(showproduct);//�������ã�����ڼ������ִ��
  });
    $(document).ready(function() {
$('#slider').slider({ speed: 500 });
});
    function buyCart(){
    	document.form1.action="buycart.jsp";//��ַ��Ϣҳ��
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
  
<div class="di">
   <span class="d1"> ��ǰ��ƷΪ:</span>
    <span class="d2">����˹��</span>
</div>

<div style="width:600px; margin:0 auto;">
<!--<p>��ӭʹ�ó�����Ʒ����ҳ��Ʒ�Ŵ�Ч��������IE6�����ϰ汾</p>
<p style="padding-bottom:50px;">ͼƬ��ǩ�������ע��width��height��ֵ�����Ǳ�Ҫ��ֵ��ͼƬ������״�������С����������д������ֵ��ͼƬ��������1���У��������̶�</p>-->
<!--ҳ���Ҫ����,img��ǩ������ش���ͼƬ��ʵ�ߴ�px-->
<div id="showbox">
  <img src="images/buou/img01.jpg" width="300" height="300" />
  <img src="images/buou/img02.jpg" width="300" height="300" />
  <img src="images/buou/img03.jpg" width="430" height="430" />
  <img src="images/buou/img04.jpg" width="290" height="290" />
  <img src="images/buou/img05.jpg" width="300" height="300" />
  <img src="images/buou/img06.jpg" width="300" height="300" />
 
</div><!--չʾͼƬ����-->
<div id="showsum"></div><!--չʾͼƬ���-->
<p class="showpage">
  <a href="javascript:void(0);" id="showlast"> < </a>
  <a href="javascript:void(0);" id="shownext"> > </a>
</p>
</div>
<div class="miaoshu">
   <div class="m1">��żè(�ֳơ��������è��)Ragdoll</div> 
   <div class="m2">����������ϵqq:19902134��</div>
     <div class="m3">
     <span class="m3-1">����֮�Ҽ۸�</span>
    <!-- <img src="images/doller.jpg">-->
     <span class="m3-2">��40000Ԫ </span>
     <div class="m31">�г��ۣ���60000</div>
     </div>
     
     <!--                         ��һ��form��                                                  -->
     <form name="form1" action="" method="get">
     <div class="time">���䣺 
     &nbsp;&nbsp;&nbsp;&nbsp;
     <select>
      <option>3��������</option>
      <option>�����¼�����</option>
      <option>����������һ������</option>
       <option>һ������</option>
  </select></div>
     
    
    <div class="m4">��������: <input type="button" onclick="numDec()" value="-"  id="sus" >
   <input type="text" id="quantity" placeholder="0" name="count"/> 
   <input type="button" onclick="numAdd()" value="+" id="add">
   </div>  
    <div class="sdsd">����ܼ�: <span id="totalPrice">0</span></div>  
  <input type="hidden" value="40000" id="price" />
  <input type="hidden" value="2000011" name="p_kid">  
     <div class="buy">
    <div class="m6">
        <a href="javascript:buyCart();"><input type="button" value="��������"></a>
    </div>
     <div class="m7">
      <a href="javascript:addCart();"><img src="images/gouwuche.jpg">
        <input type="button" value="���빺�ﳵ">
        </a>
    </div>
    </div>
    </form>
    <div class="m8">���ղ���Ʒ</div>
</div>
 

<div class="tuijian"><span class="tword">�����Ƽ�</span></div>
<div id="slider">
	<div class="spic">
		<img src="images/buou1.jpg" />
		<a href="#">��żè</a>
	</div>
	<div class="spic">
		<img src="images/bosi.jpg" />
		<a href="#">��˹è</a>
	</div>
	<div class="spic">
		<img src="images/eluo.jpg" />
		<a href="#">����˹��è</a>
	</div>
	 <div class="spic">
		<img src="images/5.jpg" />
		<a href="#">��ë</a>
	</div>
	<div class="spic">
		<img src="images/buou2.jpg" />
		<a href="#">��żè</a>
	</div>
	<div class="spic">
		<img src="images/photos/img02.jpg" />
		<a href="#">����˹��</a>
	</div>    
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
<script type="text/javascript">  
/*���߲���jquery*/  
/*��Ʒ����������*/  
function keyup(){  
    var quantity = document.getElementById("quantity").value;  
    if(isNaN(quantity) ||  parseInt(quantity)!=quantity || parseInt(quantity)<1){  
        quantity = 1;  
        return;  
    }  
    if(quantity>=10){  
        document.getElementById("quantity").value=quantity.substring(0,quantity.length-1);  
        alert("��Ʒ�������ܴ���10");  
    }  
}  
  
/*��Ʒ����+1*/  
function numAdd(){  
    var quantity = document.getElementById("quantity").value;  
    var num_add = parseInt(quantity)+1;  
    var price=document.getElementById("price").value;  
    if(quantity==""){  
        num_add = 1;  
    }  
    if(num_add>=10){  
        document.getElementById("quantity").value=num_add-1;  
        alert("��Ʒ�������ܴ���10");  
    }else{  
        document.getElementById("quantity").value=num_add;  
        var Num=price*num_add;  
        document.getElementById("totalPrice").innerHTML=Num.toFixed(2);  
    }  
}  
/*��Ʒ����-1*/  
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
