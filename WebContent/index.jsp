<%@ page language="java" contentType="text/html; charset=gbk"
    pageEncoding="gbk"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gbk">
<title>Document</title>
<link rel="stylesheet" href="css/index.css">
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
		<span class="header"><a href="userlogin.jsp">��¼&nbsp;&nbsp;&nbsp;</a></span> 
   		<span><a href="Register.jsp">ע��</a></span>
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
      <span class="tiao">��ѡ����</span>
  </div> 
  
<div class="shangpxiala">
    
 <div class="mao">
    <span class="mengmao"><a href="">��è</a></span>
    <span class="memgmao1"><a href="buou1.jsp">��żèRagdoll</a></span> 
    <span class="memgmao2"><a href="">����˹��èRussian Blue</a></span> 
    <span class="memgmao3"><a href="">Ӣ�����۶�è:Scottsish Fold|Snooks</a></span>  
    <span class="memgmao4"><a href="">�����è munchkin</a></span>  
    <span class="memgmao5"><a href="">��˹è persian cat</a></span> 
    <span class="memgmao6"><a href="">������ëèAmericanShorthair</a></span> 
 </div>
      
 <div class="gou">
    <span class="menggou"><a href="">�ȹ�</a></span>
    <span class="menggou1"><a href="">��ʿ��Siberian Husky</a></span> 
    <span class="menggou2"><a href="alasijia.jsp">����˹��Alaskan Husky </a></span> 
    <span class="menggou3"><a href="">��ëȮGolden Retriever </a></span>  
    <span class="menggou4"><a href="">��ȮShiba Inu</a></span>  
    <span class="menggou5"><a href="">̩�� Teddy Dog</a></span> 
    <span class="menggou6"><a href="">����ȮPomeranian </a></span> 
 </div> 
</div>
   <div class="focus">
	<div class="images">
    	<div class="item"><img  src="images/bg1.jpg" class="img"/></div>
    	<div class="item"><img src="images/4.jpg" class="img"/></div>
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
<div class="remen">
    <div class="liwu"><img src="images/liwu.jpg" class="liwuimage"></div>
    <div class="liwuword">�����Ƽ�</div>
    <div><hr></div>  
</div>

 
<div class="regou">
   <div class="remaoword">�ȹ���</div>
</div>
<div class="remaoimg">
	<div class="gouimg">
	  <ul>
       <c:forEach var="h" items="${sessionScope.Hot_goods}" begin="0" end="3">       		     			
					<li><img src="${h.p_path }" /></li> 		
       </c:forEach>
      </ul>
    </div>
</div>

<div class="miaoshu">
    <div class="m1"><a href="alasijia.jsp">����˹�� ���ͣ�����Ȯ ���̣���50��<br>�۸�1000-10000<br>>>����</a></div>
     <div class="m2"><a href="">��ë  ���ͣ�����Ȯ ���̣���4��<br>�۸�1300-7500<br>>>����</a></div>
      <div class="m3"><a href="">��Ȯ ���ͣ�����Ȯ ���̣���8��<br>�۸�6000-9000<br>>>����</a></div>
       <div class="m4"><a href="">���� ���ͣ���С��Ȯ ���̣���23��<br>�۸�12000-20000<br>>>����</a></div>
</div>


<div class="remao">
    <div class="remaoword">��è��</div>
</div>
<div class="remaoimg">
	<div class="gouimg">
	  <ul>
       <c:forEach var="h" items="${sessionScope.Hot_goods}" begin="4" end="7">       		     			
					<li><img src="${h.p_path }" /></li> 		
       </c:forEach>
      </ul>
    </div>
</div>

<div class="miaoshu">
    <div class="m1"><a href="">����˹�� ���ͣ�����Ȯ ���̣���50��<br>�۸�1000-10000<br>>>����</a></div>
     <div class="m2"><a href="">��ë  ���ͣ�����Ȯ ���̣���4��<br>�۸�1300-7500<br>>>����</a></div>
      <div class="m3"><a href="">��Ȯ ���ͣ�����Ȯ ���̣���8��<br>�۸�6000-9000<br>>>����</a></div>
       <div class="m4"><a href="">���� ���ͣ���С��Ȯ ���̣���23��<br>�۸�12000-20000<br>>>����</a></div>
</div>
   
<div class="meng">
   <div class="biaoti">���������ȳ���Ѷ��������
   </div>
   <div class="pp">��������������ѣ��ܾ��˺�</div>
   </div> 
<div class="about">
   <div class="dog">
     <span class="dog1"><img src="images/7.jpg"></span>
     <span class="dog2"><h3>���������ܻ���</h3><br>
     <p>�ź�����Ŀǰ��û��ȷ�еĻش�������⣬������Ϊ������ʵ������ȡ����Ʒ�ֺʹ�С��С��Ȯ��Ȯ���ء�10���������Ȯ��Papillions�ͼ����ޡ�11-25kgs֮��Ĺ�����Ϊ���еȹ�ģ��Ʒ����߾�����Ȯ</p>
     
     </span> 
   </div> 
    <div class="cat">
     <span class="cat1"> <img src="images/buou2.jpg"></span>
     <span class="cat2"><h3>��żè������</h3><br>
     <p>��żè��ʵ��һ�ַǳ����۵�è�䣬���ǲ�ϲ���¶���į�����������˻������֡���ˣ��������Ĺ����У���Ҫ���˾�����ȡһ����ʱ�䣬����è�以���������˴˽��й�ͨ�������顣</p>
     </span> 
   </div> 
</div>

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
   
  <!-- <div class="sant">
      ��Ʒ����&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;��ʮСʱ���˻�&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;��ʮСʱ����
  </div>-->
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
   <div class="banquan">&copy;�Ͼ���ׯѧԺZLM��Ȩ����</div>
</div> 
</body>