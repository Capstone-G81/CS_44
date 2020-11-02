<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
		
        <script language="javascript">
           function stuDel(stuId)
           {
               if(confirm('Are you sure to delete it?'))
               {
                   window.location.href="<%=path %>/stuDel.action?stuId="+stuId;
               }
           }
           
           function stuAdd()
           {
                 var url="<%=path %>/admin/stu/stuAdd.jsp";
				 window.location.href=url;
           }
       </script>
	</head>

	<body leftmargin="2" topmargin="2" background='<%=path %>/images/allbg.gif'>
			<table width="98%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D1DDAA" align="center" style="margin-top:8px">
				<tr bgcolor="#E7E7E7">
					<td height="14" colspan="6" background="<%=path %>/images/tbg.gif">&nbsp;&nbsp;</td>
				</tr>
				<tr align="center" bgcolor="#FAFAF1" height="22">
					 
					<td>Student ID</td>
					<td>Name</td>
					<td width="11%">Sex</td>
					<td width="11%">Age</td>
					<td width="11%">Password</td>
					<td width="11%">Operation</td>
		        </tr>	
		        
		          <c:forEach items="${requestScope.stuList}" var="stu" varStatus="ss">
		          
			 
				<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
					 
					<td bgcolor="#FFFFFF" align="center">
					${stu.stuXuehao}
						 
					</td>
					<td bgcolor="#FFFFFF" align="center">
					
					${stu.stuRealname}
					 
					</td>
					<td bgcolor="#FFFFFF" align="center">
					${stu.stuSex}
					    
					</td>
					<td bgcolor="#FFFFFF" align="center">
						 
						${stu.stuAge}
					</td>
					<td bgcolor="#FFFFFF" align="center">
					   
					    ${stu.loginPw}
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<input type="button" value="Delete" onclick="stuDel(${stu.stuId})"/>
					</td>
				</tr>
				</c:forEach>
			</table>
	</body>
</html>
