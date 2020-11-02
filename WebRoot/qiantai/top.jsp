<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
   String path = request.getContextPath();
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>

  </head>
  
  <body>
      <ul class="sf-menu" id="nav">
          <li><a href="<%=path %>/docAll.action">Teaching Materials</a></li>
            <li><a href="<%=path %>/shipinAll.action">Teaching Videos</a></li>
          <li><a href="<%=path %>/xuexiAll.action">Learning Materials</a></li>
 
            
          <li><a href="<%=path %>/liuyanAll.action">Question Discussion</a></li>
          
          <!-- <li><a href="#">444</a>
              <ul>
                  <li><a href="#">555</a></li>
                  <li><a href="#">555</a></li>
              </ul>
          </li> -->
      </ul>
  </body>
</html>
