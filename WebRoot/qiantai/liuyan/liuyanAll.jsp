<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@ page isELIgnored="false" %> 
<%
String path = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
	<meta http-equiv="pragma" content="no-cache"/>
	<meta http-equiv="cache-control" content="no-cache"/>
	<meta http-equiv="expires" content="0"/>    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3"/>
	<meta http-equiv="description" content="This is my page"/>
	
	<link rel="stylesheet" type="text/css" href="<%=path %>/css/style.css" />
    <script type="text/javascript" src="<%=path %>/js/modernizr-1.5.min.js"></script>
   
    <script type="text/javascript" src="<%=path %>/js/jquery.js"></script>
    <script type="text/javascript" src="<%=path %>/js/jquery.easing-sooper.js"></script>
    <script type="text/javascript" src="<%=path %>/js/jquery.sooperfish.js"></script>
	<script type="text/javascript">
	    $(document).ready(function() 
	    {
	      $('ul.sf-menu').sooperfish();
	      $('.top').click(function() {$('html, body').animate({scrollTop:0}, 'fast'); return false;});
	    });
	    
	    
	    function liuyanAdd()
        {
            <c:if test="${sessionScope.userType==null || sessionScope.userType!=2}">
                  alert("请先登录");
            </c:if>
            <c:if test="${sessionScope.userType==2}">
                 var strUrl = "<%=path %>/qiantai/liuyan/liuyanAdd.jsp";
	             var ret = window.showModalDialog(strUrl,"","dialogWidth:800px; dialogHeight:500px; dialogLeft: status:no; directories:yes;scrollbars:yes;Resizable=no;");
	             window.location.reload()
	            
            </c:if>
        }
        
        function liuyanDetail(id)
        {
             var strUrl = "<%=path %>/liuyanDetail.action?id="+id;
             var ret = window.showModalDialog(strUrl,"","dialogWidth:800px; dialogHeight:500px; dialogLeft: status:no; directories:yes;scrollbars:yes;Resizable=no;");
        }
	</script>
	
	<style type="text/css">
		.c1-bline{border-bottom:#999 1px dashed;border-top:1px;}
		.f-right{float:right}
		.f-left{float:left}
		.clear{clear:both}
	</style>
  </head>
   
  <body>
  <div id="main">
      <header>
	      <div id="logo">
	        <div id="logo_text">
	          <br/><br/><br/>
	          <h1 style="width: 700px;"><a href="#" style="font-size: 30px;">Learning Management System</a></h1>
	        </div>
	      </div>
          <div id="menu_container">
	          <jsp:include flush="true" page="/qiantai/top.jsp"></jsp:include>
          </div>
      </header>
      
      
      
      
      <div id="site_content">
	      <jsp:include flush="true" page="/qiantai/right.jsp"></jsp:include>
	      <div class="content">
	        
	          <div>
		           <c:forEach items="${requestScope.liuyanList}" var="liuyan" varStatus="sta">
                       <div class="c1-bline" style="padding:7px 0px;">
                        <div class="f-left">
                             <img src="<%=path %>/img/head-mark4.gif" align="middle" class="img-vm" border="0"/> 
                             <a target='_blank' href="<%=path %>/liuyanDetail.action?id=${liuyan.id }">${liuyan.neirong }</a>
                        </div>
                        <div class="f-right">${liuyan.liuyanshi }</div>
                        <div class="clear"></div>
                       </div>
                   </c:forEach>
                   <br/>
                   <center><a target='_blank' href="<%=path %>/qiantai/liuyan/liuyanAdd.jsp" style="color: black">Submit Questions</a></center>
	          </div>
	      </div>
      </div>
      
      
      
      
      
      <footer>
          <p><a target='_blank' href="<%=path %>/login.jsp">System Background</a></p>
      </footer>
  </div>
</body>
</html>
