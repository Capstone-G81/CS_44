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
		
		<script language="JavaScript" src="<%=path %>/js/public.js" type="text/javascript"></script>
        <script language="javascript">
           function xuexiAdd()
           {
              var url="<%=path %>/admin/xuexi/xuexiAdd.jsp";
              window.location.href=url;
           }
           function down1(fujianPath,fujianYuashiMing)
           {
               var url="<%=path %>/updown/updown.jsp?fujianPath="+fujianPath+"&fujianYuashiMing="+fujianYuashiMing;
		       url=encodeURI(url); 
               url=encodeURI(url); 
               window.open(url,"_self");
           }
           
           function docDel(id)
           {
               if(confirm('Are you sure to delete it?'))
               {
                   window.location.href="<%=path %>/xuexiDel.action?id="+id;
               }
           }
           
       </script>
	</head>

	<body leftmargin="2" topmargin="2" background='<%=path %>/images/allbg.gif'>
			<table width="98%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D1DDAA" align="center" style="margin-top:8px">
				<tr bgcolor="#E7E7E7">
					<td height="14" colspan="4" background="<%=path %>/images/tbg.gif">&nbsp;&nbsp;</td>
				</tr>
				<tr align="center" bgcolor="#FAFAF1" height="22">
					 
					<td>File Name</td>
					<td>Attachment</td>
					<td width="10%">Release Time</td>
					<td width="10%">Operation</td>
		        </tr>	
		        
		         <c:forEach items="${requestScope.xuexiList}" var="xuexi" varStatus="ss">
				 
				<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
					 
					<td bgcolor="#FFFFFF" align="center">
					${xuexi.mingcheng}
						 
					</td>
					<td bgcolor="#FFFFFF" align="center">
						 
						<a href="#" onclick="down1('${xuexi.fujian}','${xuexi.fujian}')" style="font-size: 11px;color: red">Download</a>
					</td>
					<td bgcolor="#FFFFFF" align="center">
					${xuexi.shijian}
					 
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<input type="button" value="Delete" onclick="docDel(${xuexi.id})"/>
					</td>
				</tr>
				</c:forEach>
			</table>
			
			<table width='98%'  border='0'style="margin-top:8px;margin-left: 8px;">
			  <tr>
			    <td>
			      <input type="button" value="Add learning materials" style="width: 200px;" onclick="xuexiAdd()" />
			    </td>
			  </tr>
		    </table>
	</body>
</html>
