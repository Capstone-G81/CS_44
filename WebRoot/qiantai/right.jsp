<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<%
  String path = request.getContextPath();
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>

  </head>
  
  <body>
      <div id="sidebar_container">
          <!-- <div class="sidebar">
	          <h3 style="font-size: 17px;">系aaa统广告信息</h3>
	          <h4 style="margin-top: 10px;">44444444444</h4>
	          <h4 style="margin-top: 6px;">55555555555</h4>
          </div> -->
          <div class="sidebar">
	          <h4 style="margin-top: 10px;">
	             <jsp:include flush="true" page="/qiantai/userlogin/userlogin.jsp"></jsp:include>
	          </h4>
          </div>
         
          <div class="sidebar">
	          <h4 style="margin-top: 10px;">
	             <jsp:include flush="true" page="/qiantai/rili/rili.jsp"></jsp:include>
	          </h4>
          </div>
	  </div>
  </body>
</html>
