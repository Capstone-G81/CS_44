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
		
        <script language="javascript">
           function zuoyetDel(id)
           {
               if(confirm('Are you sure to delete it?'))
               {
                   window.location.href="<%=path %>/zuoyetDel.action?id="+id;
               }
           }
           function zuoyetAdd()
           {
                 var url="<%=path %>/admin/zuoyet/zuoyetAdd.jsp";
				 window.location.href=url;
           }
           
           function down1(fujianPath,fujianYuashiMing)
           {
               var url="<%=path %>/updown/updown.jsp?fujianPath="+fujianPath+"&fujianYuashiMing="+fujianYuashiMing;
		       url=encodeURI(url); 
               url=encodeURI(url); 
               window.open(url,"_self");
           }
           
            
           function timu(zuoyetId)
           {
                 var url="<%=path %>/timuMana.action?zid="+zuoyetId;
				 window.location.href=url;
           }
           function zuoyesMana(zuoyetId)
           {
                 var url="<%=path %>/zuoyesMana.action?zuoyetId="+zuoyetId;
				 window.location.href=url;
           }
           
       </script>
	</head>

	<body leftmargin="2" topmargin="2" background='<%=path %>/images/allbg.gif'>
			<table width="98%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D1DDAA" align="center" style="margin-top:8px">
				<tr bgcolor="#E7E7E7">
					<td height="14" colspan="5" background="<%=path %>/images/tbg.gif">&nbsp;&nbsp;</td>
				</tr>
				<tr align="center" bgcolor="#FAFAF1" height="22">
				    <td width="5%">Number</td>
					<td width="15%">Learning Content</td>
					<td width="10%">Attachment Download</td>
				 
					<td width="10%">Release Time</td>
					<td width="20%">Operation</td>
		        </tr>	
				<c:forEach items="${requestScope.zuoyetList}" var="zuoyet" varStatus="ss">
				<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
					<td bgcolor="#FFFFFF" align="center">
						${ss.index+1}
					</td>
					<td bgcolor="#FFFFFF" align="center">
						${zuoyet.mingcheng}
					</td>
					<td bgcolor="#FFFFFF" align="center">
					   
						<a href="#" onclick="down1('${zuoyet.fujian}','${zuoyet.fujian}')" style="font-size: 10px;color: red">Download</a>
					</td>
					 
					
					<td bgcolor="#FFFFFF" align="center">
						${zuoyet.fabushi}
					</td>
					<td bgcolor="#FFFFFF" align="center">
					    <input type="button" value="Unit Quiz Management" onclick="timu(${zuoyet.id})"/>
						<input type="button" value="Delete" onclick="zuoyetDel(${zuoyet.id})"/>
						 
					</td>
				</tr>
				</c:forEach>
			</table>
			
	</body>
</html>
