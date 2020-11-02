<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%@ page isELIgnored="false" %> 

<%
String path = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3" />
		<meta http-equiv="description" content="This is my page" />
        
        <link rel="stylesheet" type="text/css" href="<%=path %>/css/base.css" />
		
		<script type='text/javascript' src='<%=path %>/dwr/interface/loginService.js'></script>
        <script type='text/javascript' src='<%=path %>/dwr/engine.js'></script>
        <script type='text/javascript' src='<%=path %>/dwr/util.js'></script>
		
        <script language="javascript">
            function check()
            {
                 var userPwReal="${sessionScope.admin.userpw}";
                 if(document.formPw.userPw.value !=userPwReal)
                 {
                     alert("Original password is incorrect");
                     return ;
                 }
                 
                 if(document.formPw.userPw1.value =="")
                 {
                     alert("New password cannot be empty");
                     return ;
                 }
                 
                 document.getElementById("indicator").style.display="block";
                 loginService.adminPwEdit(document.formPw.userPw1.value,callback);
            }
            function callback(data)
            {
                document.getElementById("indicator").style.display="none";
                alert("Successfully modified");
            }
        </script>
	</head>

	<body leftmargin="2" topmargin="9" background='<%=path %>/images/allbg.gif'>
			<form method="post" action="<%=path %>/userPwEdit.action" name="formPw">
			<table width="98%" align="center" border="0" cellpadding="4" cellspacing="1" bgcolor="#CBD8AC" style="margin-bottom:8px">
				<tr bgcolor="#EEF4EA">
				    <td colspan="2" background="<%=path %>/images/wbg.gif" class='title'><span>&nbsp;</span></td>
				</tr>
				<tr bgcolor="#FFFFFF">
				    <td width="10%" bgcolor="#FFFFFF" align="right">
				         Username：
				    </td>
				    <td width="90%" bgcolor="#FFFFFF">
				        <input type="text" value="${sessionScope.admin.username }" name="userName" style="width: 250px;" disabled="disabled"/>
				    </td>
				</tr>
				<tr bgcolor="#FFFFFF">
				    <td width="10%" bgcolor="#FFFFFF" align="right">
				        Original Password：
				    </td>
				    <td width="90%" bgcolor="#FFFFFF">
				        <input type="password" name="userPw" id="userPw" style="width: 250px;"/>
				    </td>
				</tr>
				<tr bgcolor="#FFFFFF">
				    <td width="10%" bgcolor="#FFFFFF" align="right">
				         New Password：
				    </td>
				    <td width="90%" bgcolor="#FFFFFF">
				        <input type="password" id="userPw1" name="userPw1" style="width: 250px;"/>
				    </td>
				</tr>
				<tr bgcolor="#FFFFFF">
				    <td width="10%" bgcolor="#FFFFFF" align="right">
				        &nbsp;
				    </td>
			        <td width="90%" bgcolor="#FFFFFF">
			             <input type="button" value="Modify" onclick="check()"/>
			             &nbsp;&nbsp;&nbsp;
			             <input type="reset" value="Reset"/>
			             <img id="indicator" src="<%=path %>/img/loading.gif" alt="Loading..." style="display:none"/>
			        </td>
				</tr>
			</table>
			</form>
   </body>
</html>
