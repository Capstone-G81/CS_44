<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String path = request.getContextPath();
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<script type='text/javascript' src='<%=path %>/dwr/interface/loginService.js'></script>
    <script type='text/javascript' src='<%=path %>/dwr/engine.js'></script>
    <script type='text/javascript' src='<%=path %>/dwr/util.js'></script>
	 <script type='text/javascript' src='<%=path %>/js/public.js'></script>
	<script type="text/javascript">
	        function login()
	        {
	           if(document.userLogin.userName.value=="")
	           {
	               alert("Please enter Student ID");
	               return;
	           }
	           if(document.userLogin.userPw.value=="")
	           {
	               alert("Please enter password");
	               return;
	           }
	           
	           document.getElementById("indicator").style.display="block";
			   loginService.login(document.userLogin.userName.value,document.userLogin.userPw.value,2,callback);
	        }
	        
	        
	        function callback(data)
			{
			    document.getElementById("indicator").style.display="none";
			    if(data=="no")
			    {
			        alert("Incorrect Student ID or password");
			    }
			    if(data=="yes")
			    {
			        alert("Through verification, system login is successful");
			        window.location.reload();
			    }
			    
			}
			
			
			
			function logout()
	        {
			    loginService.logout(callback1);
	        }
	        
	        
	        function callback1(data)
			{
			    alert("Exit system");
			    window.location.reload();
			}
			
			
			function gerenzhuye(userId)
			{
			    var targetWinUrl="<%=path %>/admin/index.jsp";
				var targetWinName="newWin";
				var features="width="+screen.width+" ,height="+screen.height+" ,toolbar=yes, top=0, left=0, menubar=yes, scrollbars=yes, resizable=yes,location=no, status=yes";
				var new_win=window.open(targetWinUrl,targetWinName,features);
			}
			
			  function reg()
	        {
	                var url="<%=path %>/qiantai/userlogin/userReg.jsp";
	                var n="";
	                var w="480px";
	                var h="500px";
	                var s="resizable:no;help:no;status:no;scroll:yes";
				    openWin(url,n,w,h,s);
	        }
	</script>
  </head>
  
  <body>
       <c:if test="${sessionScope.userType==null || sessionScope.userType==0 || sessionScope.userType==1}">
			<form action="<%=path %>/userLogin.action" name="userLogin" method="post">
			      <table cellspacing="0" cellpadding="0" width="98%" align="center" border="0">
			          <tr>
			            <td align="center" colspan="2" height="10"></td>
			          </tr>
			          <tr>
			            <td align="right" width="31%" height="30" style="font-size: 11px;">Student ID:</td>
			            <td align="left" width="69%"><input style="width: 100px;" name="userName" type="text" /></td>
			          </tr>
			          <tr>
			            <td align="right" height="30" style="font-size: 11px;">Password:</td>
			            <td align="left"><input type="password" style="width: 100px;" name="userPw"/></td>
			          </tr>
			          <tr>
			            <td align="center" colspan="2" height="30">
			               <input type="button" value="Register" onclick="reg()" style="border:#ccc 1px solid; padding-top:3px;width: 60px;" />
			               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			               <input type="button" value="Log in" onclick="login()" style="border:#ccc 1px solid; padding-top:3px;width: 60px;" />
						   &nbsp;
			               <img id="indicator" src="<%=path %>/img/loading.gif" style="display:none"/>
			            </td>
			          </tr>
			      </table>
		    </form>
		    </c:if>
		    
		    <c:if test="${sessionScope.userType==2}">
		        <br/>
			                   Welcome：${sessionScope.stu.stuRealname} &nbsp;&nbsp;&nbsp;&nbsp;<br/>
			    <a href="#" style="color:#ffffff" onclick="logout()">Sign out</a> &nbsp;&nbsp;&nbsp;&nbsp;
			    <a href="#" style="color:#ffffff" onclick="gerenzhuye()">Personal Center</a> &nbsp;&nbsp;&nbsp;&nbsp;
			    <br/><br/><br/>
			</c:if>
  </body>
</html>
