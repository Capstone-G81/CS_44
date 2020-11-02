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
		<script type="text/javascript" src="<%=path %>/js/public.js"></script>
		
        <script language="javascript">
           function shipinDel(shipinId)
           {
               if(confirm('Are you sure to delete it?'))
               {
                   window.location.href="<%=path %>/shipinDel.action?shipinId="+shipinId;
               }
           }
           
            function auditShipin(shipinId,type)
           {
                  window.location.href="<%=path %>/auditShipin.action?shipinId="+shipinId + "&zts="+type;
           }
           
           function shipinAdd()
           {
                 var url="<%=path %>/admin/shipin/shipinAdd.jsp";
				 window.location.href=url;
           }
           
           function shipinBofang(fujian)
           {
                 var url="<%=path %>/bofang/bofang.jsp?fujian="+fujian;
                 var n="";
                 var w="700px";
                 var h="500px";
                 var s="resizable:no;help:no;status:no;scroll:yes";
				 openWin(url,n,w,h,s);
           }
           
           function down1(fujianPath,fujianYuashiMing)
           {
               var url="<%=path %>/updown/updown.jsp?fujianPath="+fujianPath+"&fujianYuashiMing="+fujianYuashiMing;
		       url=encodeURI(url); 
               url=encodeURI(url); 
               window.open(url,"_self");
           }
       </script>
	</head>

	<body leftmargin="2" topmargin="2" background='<%=path %>/img/allbg.gif'>
			<table width="98%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D1DDAA" align="center" style="margin-top:8px">
				<tr bgcolor="#E7E7E7">
					<td height="14" colspan="4" background="<%=path %>/img/tbg.gif">&nbsp;</td>
				</tr>
				<tr align="center" bgcolor="#FAFAF1" height="22">
				 
					<td width="25%">Title</td>
					<td>Attachment Download</td>
					<td width="10%">Release Time</td>
				 
					<td width="19%">Operation</td>
		        </tr>	
		        
		         <c:forEach items="${requestScope.shipinList}" var="shipin" varStatus="ss">
				 
				<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
					 
					<td bgcolor="#FFFFFF" align="center">
					${shipin.shipinName}
						 
					</td>
					<td bgcolor="#FFFFFF" align="center">
					   
						<a href="#" onclick="down1('${shipin.fujian}','${shipin.fujian}')" style="font-size: 11px;color: red">Download</a>
					</td>
					<td bgcolor="#FFFFFF" align="center">
					${shipin.shijian}
					   
					</td>
				 
					<td bgcolor="#FFFFFF" align="center">
						<input type="button" value="Delete" onclick="shipinDel(${shipin.shipinId})"/>
					 
					</td>
				</tr>
				</c:forEach>
			</table>
	 
			 
	</body>
</html>
