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
	<meta http-equiv="pragma" content="no-cache"/>
	<meta http-equiv="cache-control" content="no-cache"/>
	<meta http-equiv="expires" content="0"/>    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3"/>
	<meta http-equiv="description" content="This is my page"/>
	<meta http-equiv="X-UA-Compatible" content="IE=8" />
	
	<link rel="stylesheet" href="<%=path %>/css/leftMenu.css" type="text/css"></link>
  
    <script type="text/javascript" src="<%=path %>/js/jquery-1.4.1.min.js"></script>
    <script type="text/javascript" src="<%=path %>/js/jquery-common.js"></script>
	
    <script type="text/javascript">
        var state = 0;
        $(document).ready(function () {
            /********* 菜单收缩效果***********/
            $(".navcontent").hide();
            $(".navhead").click(function () {
                $(".navcontent").not($(this).next()).hide();
                $(this).next().slideToggle(200);
                $("a[type='Module']").not($(this)).attr("class", "navhead");
                if ($(this).attr("class") == "navhead") {
                    $(this).attr("class", "navheadOpen");
                }
                else {
                    $(this).attr("class", "navhead");
                }
            });
            $(".navhead").first().click();
        });
    </script>
    
    <style type="text/css">
        html
        {
            _overflow-x: hidden;
            height: 100%;
        }
        body
        {
            background-color: #D9F3FF;
            padding: 0px;
            margin: 0px;
            height: 100%;
        }
        ul
        {
            margin: 0px;
            padding: 0px;
        
        }
        li
        {
            list-style: none;
            margin: 0px;
            padding: 0px;
        }
        a
        {
            font-size: 6px
        }
    </style>
  </head>
  <c:if test="${sessionScope.userType==0}">
  <body style="margin: 0px;">
        <div id="Menu" style="width: 190px; float: left; margin: 2px 0px 0px 2px; _margin-left: 2px;overflow: hidden;">
            <div style="margin-left: 2px; width: 180px; height: 25px; vertical-align: middle;line-height: 25px; font-size: 16px; font-weight: bold; color: White;font-family: 微软雅黑; background-image: url('<%=path %>/images/menutop.png')"> <!-- 管理菜单 -->
            </div>
            <ul id="identifier">
                <li><a class="navhead" type='Module' style="font-family: Times New Roman;">
                <img style='vertical-align:middle' src="<%=path %>/images/group.png" />&nbsp;Modify Password</a>
                    <ul class="navcontent">
						<li><img  style='vertical-align:middle' src="<%=path %>/images/vcard_add.png" />&nbsp;
						<a target="main" href="<%=path %>/admin/userinfo/userPw.jsp" style="font-family: Times New Roman;">Modify Password</a></li>
	                </ul>
                </li>
			 
				<li><a class="navhead" type='Module' style="font-family: Times New Roman;">
				<img style='vertical-align:middle' src="<%=path %>/images/group.png" />&nbsp;Student Management</a>
				    <ul class="navcontent">
						<li><img  style='vertical-align:middle; margin-left: -10px' src="<%=path %>/images/vcard_add.png" />&nbsp;
						<a target="main" href="<%=path %>/stuMana.action" style="font-family: Times New Roman;">Student Management</a></li>
						<li><img  style='vertical-align:middle; margin-left: -10px' src="<%=path %>/images/table.png" />&nbsp;
						<a target="main" href="<%=path %>/admin/stu/stuAdd.jsp" style="font-family: Times New Roman;">Add Student</a></li>
				    </ul>
				</li>
				
				<li><a class="navhead" type='Module' style="font-family: Times New Roman;">
				<img style='vertical-align:middle' src="<%=path %>/images/group.png" />&nbsp;Teacher Management</a>
				    <ul class="navcontent">
						<li><img  style='vertical-align:middle' src="<%=path %>/images/vcard_add.png" />&nbsp;
						<a target="main" href="<%=path %>/teacherMana.action" style="font-family: Times New Roman;">Teacher Management</a></li>
						<li><img  style='vertical-align:middle' src="<%=path %>/images/table.png" />&nbsp;
						<a target="main" href="<%=path %>/admin/teacher/teacherAdd.jsp" style="font-family: Times New Roman;">Add Teacher</a></li>
				    </ul>
				</li>
				
				<li><a class="navhead" type='Module' style="font-family: Times New Roman;">
				<img style='vertical-align:middle' src="<%=path %>/images/group.png" />&nbsp;Teaching Materials</a>
				    <ul class="navcontent">
						<li><img  style='vertical-align:middle' src="<%=path %>/images/vcard_add.png" />&nbsp;
						<a target="main" href="<%=path %>/admin/doc/docAdd.jsp" style="font-family: Times New Roman;">Add Materials</a></li>
						<li><img  style='vertical-align:middle' src="<%=path %>/images/table.png" />&nbsp;
						<a target="main" href="<%=path %>/docMana.action" style="font-family: Times New Roman;">Teaching Materials</a></li>
				    </ul>
				</li>
				 
				 
				 <li><a class="navhead" type='Module' style="font-family: Times New Roman;">
				<img style='vertical-align:middle' src="<%=path %>/images/group.png" />&nbsp;Learning Materials</a>
				    <ul class="navcontent">
						<li><img  style='vertical-align:middle' src="<%=path %>/images/vcard_add.png" />&nbsp;
						<a target="main" href="<%=path %>/xuexiMana.action" style="font-family: Times New Roman;">Learning Materials</a></li>
					 	<li><img  style='vertical-align:middle' src="<%=path %>/images/vcard_add.png" />&nbsp;
						<a target="main" href="<%=path %>/admin/xuexi/xuexiAdd.jsp" style="font-family: Times New Roman;">Add Materials</a></li>
				    </ul>
				</li>
				
						<li><a class="navhead" type='Module' style="font-family: Times New Roman;">
				<img style='vertical-align:middle' src="<%=path %>/images/group.png" />&nbsp;Teaching Videos</a>
				    <ul class="navcontent">
						<li><img  style='vertical-align:middle' src="<%=path %>/images/vcard_add.png" />&nbsp;
						<a target="main" href="<%=path %>/shipinMana.action" style="font-family: Times New Roman;">Teaching Videos</a></li>
						<li><img  style='vertical-align:middle' src="<%=path %>/images/table.png" />&nbsp;
						<a target="main" href="<%=path %>/admin/shipin/shipinAdd.jsp" style="font-family: Times New Roman;">Add Videos</a></li>
				    </ul>
				</li>
				
				<li><a class="navhead" type='Module' style="font-family: Times New Roman;">
				<img style='vertical-align:middle' src="<%=path %>/images/group.png" />&nbsp;Questions Discussion</a>
				    <ul class="navcontent">
						<li><img  style='vertical-align:middle' src="<%=path %>/images/vcard_add.png" />&nbsp;
						<a target="main" href="<%=path %>/liuyanMana.action" style="font-family: Times New Roman;">Discussion Content</a></li>
				    </ul>
				</li>
				
				
				
			   <li><a class="navhead" type='Module' style="font-family: Times New Roman;">
				<img style='vertical-align:middle' src="<%=path %>/images/group.png" />&nbsp;Online Learning</a>
				    <ul class="navcontent">
						<li><img  style='vertical-align:middle' src="<%=path %>/images/vcard_add.png" />&nbsp;
						<a target="main" href="<%=path %>/zuoyetMine.action" style="font-family: Times New Roman;">Learning Content</a></li>
						<li><img  style='vertical-align:middle' src="<%=path %>/images/table.png" />&nbsp;
						<a target="main" href="<%=path %>/admin/zuoyet/zuoyetAdd.jsp" style="font-family: Times New Roman;">Release Unit</a></li>
				    </ul>
				</li>
				
			 
            </ul>
            <div style="margin-left: 2px; width: 180px; height: 28px; background-image: url('<%=path %>/images/foot.png')"></div>
        </div>
</body>
</c:if>




 <c:if test="${sessionScope.userType==1}">
  <body style="margin: 0px;">
        <div id="Menu" style="width: 190px; float: left; margin: 2px 0px 0px 2px; _margin-left: 2.5px;overflow: hidden;">
            <div style="margin-left: 2px; width: 180px; height: 25px; vertical-align: middle;line-height: 25px; font-size: 16px; font-weight: bold; color: White;font-family: 微软雅黑; background-image: url('<%=path %>/images/menutop.png')"> <!-- 管理菜单 -->
            </div>
            <ul id="identifier">
                <li><a class="navhead" type='Module' style="font-family: Times New Roman;">
                <img style='vertical-align:middle' src="<%=path %>/images/group.png" />&nbsp;Modify Password</a>
                    <ul class="navcontent">
						<li><img  style='vertical-align:middle' src="<%=path %>/images/vcard_add.png" />&nbsp;
						<a target="main" href="<%=path %>/admin/userinfo/userPw.jsp" style="font-family: Times New Roman;">Modify Password</a></li>
	                </ul>
                </li>
			 
				 
				
				<li><a class="navhead" type='Module' style="font-family: Times New Roman;">
				<img style='vertical-align:middle' src="<%=path %>/images/group.png" />&nbsp;Teaching Materials</a>
				    <ul class="navcontent">
						<li><img  style='vertical-align:middle' src="<%=path %>/images/vcard_add.png" />&nbsp;
						<a target="main" href="<%=path %>/admin/doc/docAdd.jsp" style="font-family: Times New Roman;">Add Materials</a></li>
						<li><img  style='vertical-align:middle' src="<%=path %>/images/table.png" />&nbsp;
						<a target="main" href="<%=path %>/docMana.action" style="font-family: Times New Roman;">Teaching Materials</a></li>
				    </ul>
				</li>
				 
				 
				 <li><a class="navhead" type='Module' style="font-family: Times New Roman;">
				<img style='vertical-align:middle' src="<%=path %>/images/group.png" />&nbsp;Learning Materials</a>
				    <ul class="navcontent">
						<li><img  style='vertical-align:middle' src="<%=path %>/images/vcard_add.png" />&nbsp;
						<a target="main" href="<%=path %>/xuexiMana.action" style="font-family: Times New Roman;">Learning Materials</a></li>
					 	<li><img  style='vertical-align:middle' src="<%=path %>/images/vcard_add.png" />&nbsp;
						<a target="main" href="<%=path %>/admin/xuexi/xuexiAdd.jsp" style="font-family: Times New Roman;">Add Materials</a></li>
				    </ul>
				</li>
				
						<li><a class="navhead" type='Module' style="font-family: Times New Roman;">
				<img style='vertical-align:middle' src="<%=path %>/images/group.png" />&nbsp;Teaching Videos</a>
				    <ul class="navcontent">
						<li><img  style='vertical-align:middle' src="<%=path %>/images/vcard_add.png" />&nbsp;
						<a target="main" href="<%=path %>/shipinMana.action" style="font-family: Times New Roman;">Teaching Videos</a></li>
						<li><img  style='vertical-align:middle' src="<%=path %>/images/table.png" />&nbsp;
						<a target="main" href="<%=path %>/admin/shipin/shipinAdd.jsp" style="font-family: Times New Roman;">Add Videos</a></li>
				    </ul>
				</li>
				
				<li><a class="navhead" type='Module' style="font-family: Times New Roman;">
				<img style='vertical-align:middle' src="<%=path %>/images/group.png" />&nbsp;Questions Discussion</a>
				    <ul class="navcontent">
						<li><img  style='vertical-align:middle' src="<%=path %>/images/vcard_add.png" />&nbsp;
						<a target="main" href="<%=path %>/liuyanMana.action" style="font-family: Times New Roman;">Discussion Content</a></li>
				    </ul>
				</li>
				
				
				
			   <li><a class="navhead" type='Module' style="font-family: Times New Roman;">
				<img style='vertical-align:middle' src="<%=path %>/images/group.png" />&nbsp;Online Learning</a>
				    <ul class="navcontent">
						<li><img  style='vertical-align:middle' src="<%=path %>/images/vcard_add.png" />&nbsp;
						<a target="main" href="<%=path %>/zuoyetMine.action" style="font-family: Times New Roman;">Learning Content</a></li>
						<li><img  style='vertical-align:middle' src="<%=path %>/images/table.png" />&nbsp;
						<a target="main" href="<%=path %>/admin/zuoyet/zuoyetAdd.jsp" style="font-family: Times New Roman;">Release Unit</a></li>
				    </ul>
				</li>
				
				 
				
            </ul>
            <div style="margin-left: 2px; width: 180px; height: 28px; background-image: url('<%=path %>/images/foot.png')"></div>
        </div>
</body>
</c:if>
 








<c:if test="${sessionScope.userType==2}">
<body style="margin: 0px;">
        <div id="Menu" style="width: 190px; float: left; margin: 2px 0px 0px 2px; _margin-left: 2.5px;overflow: hidden;">
            <div style="margin-left: 2px; width: 180px; height: 25px; vertical-align: middle;line-height: 25px; font-size: 16px; font-weight: bold; color: White;font-family: 微软雅黑; background-image: url('<%=path %>/images/menutop.png')"> <!-- 管理菜单 -->
            </div>
            <ul id="identifier">
                <li><a class="navhead" type='Module' style="font-family: Times New Roman;">
                <img style='vertical-align:middle' src="<%=path %>/images/group.png" />&nbsp;Modify Information</a>
                    <ul class="navcontent">
						<li><img  style='vertical-align:middle' src="<%=path %>/images/vcard_add.png" />&nbsp;
						<a target="main" href="<%=path %>/admin/userinfo/stuinfo.jsp" style="font-family: Times New Roman;">Modify Information</a></li>
	                </ul>
                </li>
                
         
				
                
				<li><a class="navhead" type='Module' style="font-family: Times New Roman;">
				<img style='vertical-align:middle' src="<%=path %>/images/group.png" />&nbsp;Online Learning</a>
				    <ul class="navcontent">
						<li><img  style='vertical-align:middle' src="<%=path %>/images/vcard_add.png" />&nbsp;
						<a target="main" href="<%=path %>/zuoyetAll.action" style="font-family: Times New Roman;">Learning Content</a></li>
				    </ul>
				</li>
				<li><a class="navhead" type='Module' style="font-family: Times New Roman;">
				<img style='vertical-align:middle' src="<%=path %>/images/group.png" />&nbsp;Quiz Result</a>
				    <ul class="navcontent">
						<li><img  style='vertical-align:middle' src="<%=path %>/images/vcard_add.png" />&nbsp;
						<a target="main" href="<%=path %>/zuoyesMine.action" style="font-family: Times New Roman;">Quiz Result</a></li>
				    </ul>
				</li>
            </ul>
            <div style="margin-left: 2px; width: 180px; height: 28px; background-image: url('<%=path %>/images/foot.png')"></div>
        </div>
</body>
</c:if>





</html>
