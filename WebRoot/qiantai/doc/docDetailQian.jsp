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
	    
	    function down1(fujianPath,fujianYuashiMing)
        {
            var url="<%=path %>/updown/updown.jsp?fujianPath="+fujianPath+"&fujianYuashiMing="+fujianYuashiMing;
            url=encodeURI(url); 
            url=encodeURI(url); 
            window.open(url,"_self");
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
	          <!-- <h1 style="font-size: 22px;">News</h1>
	          <p>
		           This simple, fixed width website template is released under a Creative Commons Attribution 3.0 Licence
		           This means you are free to download and use it for personal and commercial proj
	          </p>
	          <p>1111</p>
	          <p>2222</p> -->
	          <!-- <h1 style="font-size: 22px;">
	              &nbsp;
	          </h1> -->
	          <div>
				   <table width="100%" border="0">
					    <tr>
					       <td align="center">File Name：${requestScope.doc.mingcheng }<hr/></td>
					    </tr>
					    <tr>
					       <td align="center">
					            ${requestScope.doc.fujian }
					            &nbsp;&nbsp;&nbsp;
					            <a href="#" onclick="down1('${requestScope.doc.fujian }','${requestScope.doc.fujian }')" style="font-size: 13px;color: red">下载</a>
					            <hr/>
					       </td>
					    </tr>
					    <tr>
					       <td align="center">Release Time：${requestScope.doc.shijian }<hr/></td>
					    </tr>
					</table>
	          </div>
	      </div>
      </div>
      
      
      
      
      
      <footer>
          <p><a target='_blank' href="<%=path %>/login.jsp">System Background</a></p>
      </footer>
  </div>
</body>
</html>
