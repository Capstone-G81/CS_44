<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %> 
<%
String path = request.getContextPath();
%>

<HTML>
	<HEAD>
		<META http-equiv=Content-Type content="text/html; charset=utf-8">
		<style type="text/css">
	        .Header {background: url(<%=path %>/images/topleft.jpg) #d10e00 repeat-x left top; height: 118px;}
	        .HeaderTop {margin: 0px auto;}
        </style>
        
        <script type="text/javascript">
		    function logout()
			{
			   if(confirm("Are you sure to exit the system?"))
			   {
				   window.parent.location="<%=path %>/login.jsp";
			   }
			}
	    </script>
	</HEAD>

	<BODY text=#000000 bgColor=#ffffff leftMargin=0 rightmargin="0" topMargin=0 marginheight="0" marginwidth="0">
		<div class="Header HeaderTop">
            <div class="list_bar">
				 <span style="float:left;font-size: 33px;color: white;font-weight: bolder;display: block;text-align: left;margin-top: 38px;margin-left: 30px;">
				          Learning Management System
				 </span>
				 <span style="float:right;font-size: 20px;color: white;font-weight: bolder;display: block;text-align: left;margin-top: 50px;margin-right: 10px;">			    
				     <!-- <SCRIPT>setInterval("clock.innerHTML=new Date().toLocaleString()+'&nbsp;&nbsp;'+''.charAt(new Date().getDay());",1000)</SCRIPT><SPAN id=clock></SPAN>
                     &nbsp;&nbsp;&nbsp; -->
                     <c:if test="${sessionScope.userType==0}">
                    【${sessionScope.admin.username}-Admin】 <a href="#" onclick="logout()" style="color: white;font-size: 14px;font-family: 微软雅黑">Sign out</a>
                     </c:if>
                     <c:if test="${sessionScope.userType==1}">
                    【${sessionScope.teacher.name}-Teacher】 <a href="#" onclick="logout()" style="color: white;font-size: 14px;font-family: 微软雅黑">Sign out</a>
                     </c:if>
                     <c:if test="${sessionScope.userType==2}">
                     </c:if>
                 </span>
			</div>
		</div>
		
</HTML>
