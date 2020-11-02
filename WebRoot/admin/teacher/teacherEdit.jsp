<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<%@ page isELIgnored="false" %> 
<%@ taglib uri="http://java.fckeditor.net" prefix="FCK"%>
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
        <script type='text/javascript' src='<%=path %>/dwr/engine.js'></script>
        <script type='text/javascript' src='<%=path %>/dwr/util.js'></script>
        <script type="text/javascript" src="<%=path %>/js/popup.js"></script>
        
        <script language="javascript">
		   function save()
		    {
		        document.formAdd.submit();
		    }
        </script>
	</head>

	<body leftmargin="2" topmargin="9" background='<%=path %>/images/allbg.gif'>
			<form action="<%=path %>/teacherEdit.action" name="formAdd" method="post">
				 <input type="hidden" name="teacher.id" value="${teacher.id}"/> 
				     <table width="98%" align="center" border="0" cellpadding="4" cellspacing="1" bgcolor="#CBD8AC" style="margin-bottom:8px">
						<tr bgcolor="#EEF4EA">
					        <td colspan="3" background="<%=path %>/images/wbg.gif" class='title'><span>Add</span></td>
					    </tr>
												
										   						
											   <tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="25%" bgcolor="#FFFFFF" align="right">
						       Teacher ID：
						    </td>
						    <td width="75%" bgcolor="#FFFFFF" align="left">	
				 				      				      <input type="text" id="tno" name="teacher.tno"  value="${teacher.tno}"  maxlength="20"   />
					  				 
				  </td>
						</tr>
				  				   						
											   <tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="25%" bgcolor="#FFFFFF" align="right">
						       Name：
						    </td>
						    <td width="75%" bgcolor="#FFFFFF" align="left">	
						    
						    
				 				      				      <input type="text" id="name" name="teacher.name"  value="${teacher.name}"  maxlength="20"   />
					  				 
				  </td>
						</tr>
				  				   						
					  <tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="25%" bgcolor="#FFFFFF" align="right">
						       Sex：
						    </td>
						    <td width="75%" bgcolor="#FFFFFF" align="left">	
						    
						    
						     <select  id="sex"  name="teacher.sex" >
						      <option <c:if test="${teacher.sex=='男'}">selected</c:if> value="男">Male</option>
						      <option<c:if test="${teacher.sex=='女'}">selected</c:if>   value="女">Female</option>
						    </select>
				 				      				    
					  				 
				  </td>
						</tr>
				  				   						
											   <tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="25%" bgcolor="#FFFFFF" align="right">
						       Telephone：
						    </td>
						    <td width="75%" bgcolor="#FFFFFF" align="left">	
				 				      				      <input type="text" id="tel" name="teacher.tel"  value="${teacher.tel}"  maxlength="20"   />
					  				 
				  </td>
						</tr>
				  				   						
											   <tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="25%" bgcolor="#FFFFFF" align="right">
						       Teacher Type：
						    </td>
						    <td width="75%" bgcolor="#FFFFFF" align="left">	
				 				      				      <input type="text" id="zc" name="teacher.zc"  value="${teacher.zc}"  maxlength="30"   />
					  				 
				  </td>
						</tr>
				  				   						
											   <tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="25%" bgcolor="#FFFFFF" align="right">
						       Password：
						    </td>
						    <td width="75%" bgcolor="#FFFFFF" align="left">	
				 				      				      <input type="text" id="pwd" name="teacher.pwd"  value="${teacher.pwd}"  maxlength="30"   />
					  				 
				  </td>
						</tr>
				  				   						   
							
					 
						<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
						    <td width="25%" bgcolor="#FFFFFF" align="right">
						        &nbsp;
						    </td>
						    <td width="75%" bgcolor="#FFFFFF" align="left">
						       <input type="button" value="Submit" onclick="save()"/>&nbsp; 
						       <input type="reset" value="Reset"/>&nbsp;
						    </td>
						</tr>
					 </table>
			</form>
   </body>
</html>