<%@page import="java.text.SimpleDateFormat"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
        
        
        <script type="text/javascript" src="<%=path %>/js/popup.js"></script>
        <script type="text/javascript">
		    
		    function check()
		    {
		        if(document.formAdd.mingcheng.value=="")
		        {
		            alert("Please enter name");
		            return false;
		        }
		        if(document.formAdd.fujian.value=="")
		        {
		            alert("Please upload attachment");
		            return false;
		        }
		         
		    } 
		    
		    
		    function up()
		    {
		        var pop=new Popup({ contentType:1,isReloadOnClose:false,width:400,height:200});
	            pop.setContent("contentUrl","<%=path %>/upload/upload.jsp");
	            pop.setContent("title","File Upload");
	            pop.build();
	            pop.show();
		    }
		    
		</script>
	</head>

	<body leftmargin="2" topmargin="9" background='<%=path %>/images/allbg.gif'>
			<form action="<%=path %>/zuoyesAdd.action" name="formAdd" method="post">
			
			
			  <c:forEach items="${requestScope.timuList}"  varStatus="sta" var="timu">
							<table cellspacing="5" cellpadding="5">
								<tr>
									<td>
										${sta.index+1 }：${timu.name }(<font color="red">${timu.fenshu } points</font>)
										&nbsp;&nbsp;&nbsp;
									</td>
								</tr>
								<tr>
									<td align="left">
										    A:<input type="radio" name="TM#${timu.id}" value="A" style="border: 0"/>${timu.xuanxianga }<br/>
										    B:<input type="radio" name="TM#${timu.id}" value="B" style="border: 0"/>${timu.xuanxiangb }<br/>
										    C:<input type="radio" name="TM#${timu.id}" value="C" style="border: 0"/>${timu.xuanxiangc }<br/>
										    D:<input type="radio" name="TM#${timu.id}" value="D" style="border: 0"/>${timu.xuanxiangd }<br/>
									</td>
								</tr>
							</table>
							<br/>
					   </c:forEach>
			
			
				     <table width="98%" align="center" border="0" cellpadding="4" cellspacing="1" bgcolor="#CBD8AC" style="margin-bottom:8px">
						<tr bgcolor="#EEF4EA">
					        <td colspan="3" background="<%=path %>/images/wbg.gif" class='title'><span>&nbsp;</span></td>
					    </tr>
					    <tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="10%" bgcolor="#FFFFFF" align="right">
						        Answer Instruction：
						    </td>
						    <td width="90%" bgcolor="#FFFFFF" align="left">
						        <input type="text" name="mingcheng" size="60"/>
						    </td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="10%" bgcolor="#FFFFFF" align="right">
						       Subjective Questions Upload：
						    </td>
						    <td width="75%" bgcolor="#FFFFFF" align="left">
						        <input type="text" name="fujian" id="fujian" size="60" readonly="readonly"/>
						        <input type="button" value="Upload" onclick="up()"/>
						        <input type="hidden" name="fujianYuanshiming" id="fujianYuanshiming"/>
						    </td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="10%" bgcolor="#FFFFFF" align="right">
						       Submission Time：
						    </td>
						    <td width="90%" bgcolor="#FFFFFF" align="left">
						        <input type="text" name="tijiaoshi" size="60" value="<%=new SimpleDateFormat("yyyy-MM-dd HH:mm").format(new Date())%>"/>
						    </td>
						</tr>
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="10%" bgcolor="#FFFFFF" align="right">
						        &nbsp;
						    </td>
						    <td width="90%" bgcolor="#FFFFFF" align="left">
						       <input type="hidden" name="zuoyetId" value="<%=request.getParameter("zid") %>"/>
						       <input type="submit" value="Submit" onclick="return check()"/>&nbsp; 
						       <input type="reset" value="Reset"/>&nbsp;
						    </td>
						</tr>
					 </table>
			</form>
   </body>
</html>
