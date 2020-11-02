<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
	    <base target="_self"/>
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3" />
		<meta http-equiv="description" content="This is my page" />
		<script language="javascript">
            function closeOpen()
		    {
		       window.returnValue=false;
		       window.close();
		    }
		    function check1()
		    {
		        if(document.form1.stuXuehao.value=="")
		        {
		            alert("Please enter Student ID");
		            return false;
		        }
		        if(document.form1.loginPw.value=="")
		        {
		            alert("Please enter password");
		            return false;
		        }
		        if(document.form1.loginPw.value!=document.form1.userPw1.value)
		        {
		            alert("The two passwords are inconsistent");
		            return false;
		        }
		        document.form1.submit();
		    }
        </script>
	</head>
	<body>
			<form action="<%=path %>/userReg.action" name="form1" method="post">
				<table width="98%" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#CCCCCC">
					<tr>
						<th height="40" colspan="2" bgcolor="#FFFFFF" class="f12b-red" style="font-size: 11px;">
							User Registration
						</th>
					</tr>
					<tr>
						<td width="20%" height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;">
							Student ID：
						</td>
						<td width="80%" bgcolor="#FFFFFF">
							&nbsp;
							<input type="text" name="stuXuehao" id="stuXuehao"/>
						</td>
					</tr>
					<tr>
						<td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;">
							Password：
						</td>
						<td bgcolor="#FFFFFF">
							&nbsp;
							<input type="password" name="loginPw"/>
						</td>
					</tr>
					<tr>
						<td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;">
							Password Confirmation：
						</td>
						<td bgcolor="#FFFFFF">
							&nbsp;
							<input type="password" name="userPw1"/>
						</td>
					</tr>
					<tr >
						  <td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;">
						        Name：
						    </td>
						   <td bgcolor="#FFFFFF">
						   &nbsp;
						         <input type="text" name="stuRealname"/>
						    </td>
						</tr>
						<tr>
						    <td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;">
						        Sex：
						    </td>
						  <td bgcolor="#FFFFFF">
						  &nbsp;
						         <input type="radio" name="stuSex" value="男" checked="checked"/>Male
						         &nbsp;&nbsp;
						         <input type="radio" name="stuSex" value="女"/>Female
						         
						    </td>
						</tr>
						<tr>
						  <td height="30" align="right" bgcolor="#F9F9F9" style="font-size: 11px;">
						        Age：
						    </td>
						    <td bgcolor="#FFFFFF">
						    &nbsp;
						         <input type="text" name="stuAge" />
						    </td>
						</tr>
					 
					<tr>
						<td height="30" align="right" bgcolor="#F9F9F9">
							&nbsp;
						</td>
						<td bgcolor="#FFFFFF">
							&nbsp;
							<input type="button" value="OK" onclick="check1();"/>
							<input type="button" value="Cancel" onclick="closeOpen()"/>
						</td>
					</tr>
				</table>
			</form>
	</body>
</html>
