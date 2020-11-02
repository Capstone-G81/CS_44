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
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3" />
		<meta http-equiv="description" content="This is my page" />

		<link rel="stylesheet" type="text/css" href="<%=path %>/css/base.css" />
		
		<script language="JavaScript" src="<%=path %>/js/public.js" type="text/javascript"></script>
		
        <script language="javascript">
           function timuAdd()
           {
              var url="<%=path %>/admin/timu/timuAdd.jsp?zid=${zid}";
              window.location.href=url;
           }
           
           function timuDel(id)
           {
               if(confirm('Are you sure to delete it?'))
               {
                   window.location.href="<%=path %>/timuDel.action?id="+id;
               }
           }
       </script>
	</head>

	<body leftmargin="2" topmargin="2" background='<%=path %>/img/allbg.gif'>
			<table width="98%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D1DDAA" align="center" style="margin-top:8px">
				<tr bgcolor="#E7E7E7">
					<td height="14" colspan="8" background="<%=path %>/img/tbg.gif">&nbsp;&nbsp;</td>
				</tr>
				<tr align="center" bgcolor="#FAFAF1" height="22">
					 
					<td width="10%">Questions</td>
					<td width="10%">Option A</td>
					<td width="10%">Option B</td>
					
					<td width="10%">Option C</td>
					<td width="10%">Option D</td>
					<td width="3%">Answer</td>
					<td width="3%">Marks</td>
					
					<td width="5%">Operation</td>
		        </tr>	
				<c:forEach items="${requestScope.timuList}" var="timu" varStatus="ss">
				<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
					 
					<td bgcolor="#FFFFFF" align="center">
						${timu.name}
					</td>
					<td bgcolor="#FFFFFF" align="center">
					    ${timu.xuanxianga}
					</td>
					
					<td bgcolor="#FFFFFF" align="center">
					    ${timu.xuanxiangb}
					</td>
					<td bgcolor="#FFFFFF" align="center">
						 ${timu.xuanxiangc}
					</td>
					<td bgcolor="#FFFFFF" align="center">
					    ${timu.xuanxiangd}
					</td>
					<td bgcolor="#FFFFFF" align="center">
					    ${timu.daan}
					</td>
					<td bgcolor="#FFFFFF" align="center">
						 ${timu.fenshu}
					</td>
					
					<td bgcolor="#FFFFFF" align="center">
						<input type="button" value="Delete" onclick="timuDel(${timu.id})"/>
					</td>
				</tr>
				</c:forEach>
			</table>
			
			<table width='98%'  border='0'style="margin-top:8px;margin-left: 8px;">
			  <tr>
			    <td>
			      <input type="button" value="Add quiz questions" style="width: 120px;" onclick="timuAdd()" />
			    </td>
			  </tr>
		    </table>
	</body>
</html>
