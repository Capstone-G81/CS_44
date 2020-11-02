<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false"%>
<%
	String path = request.getContextPath();
	String webpath = path + "/qiantai";
	String fujian = request.getParameter("fujian");
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="Keywords" content="">
		<meta name="Description" content="">
		<title>Online Video Learning System</title>
	<link href="<%=webpath%>/css/bootstrap.css" rel="stylesheet">
		<link rel="stylesheet" media="screen"
			href="<%=webpath%>/css/common.css">
		<link rel="stylesheet" media="screen"
			href="<%=webpath%>/css/es-icon.css">
		<link href="<%=webpath%>/css/main.css" rel="stylesheet">
		<link rel="stylesheet" type="text/css"
			href="<%=webpath%>/css/howzhi.css">
		<link rel="stylesheet" type="text/css"
			href="<%=webpath%>/css/iconfont.css">
 

	</head>
	  <body class="hz-learning">
     

	  <div class="learn-dashboard-header breadcrumb ">
                           
                <span class="phm">  ${shipin.shipinName} </span>
                          
                       
                    </div>
  <div class="learn-dashboard toolbarhide" id="lesson-dashboard"     >
             <div class="dashboard-content">
  <div class="dashboard-body">
  	
 
 <!-- 酷播V4.05跨平台代码/开始 -->
<div class="video" id="CuPlayer" style="width: 100%;height: 100%">
<script type="text/javascript">
<!--
var vID        = "c1";                   //vID
var vWidth     = "100%";                  //宽度设定，配合CSS实现
var vHeight    = "600";                  //高度设定，配合CSS实现
var vFile      = "<%=path%>/qiantai/player/CuSunV4set.xml";       //配置文件地址:支持五种广告设定
var vPlayer    = "<%=path%>/qiantai/player/player.swf?v=4.0";     //播放器文件地址
var vPic       = "<%=path%>/${shipin.fujian}";        //视频缩略图
var vCssurlv   = "<%=path%>/qiantai/player/css/videos.min.css";   //CSS文件
var vAutoPlay  = "yes";                  //是否自动播放
var vEndTime   = 0;                      //预览时间(秒数),默认为0
var vLogoPath  = "";      //Logo地址
var vPlayMod   = 0;                      //播放模式优先级,默认=0,html5优先=1,flash优先=2
var vMp4url    = "<%=path%>/${shipin.fujian}";//视频文件地址推荐用mp4文件(h264编码)
//-->
</script>
<script class="CuPlayerVideo" data-mce-role="CuPlayerVideo" type="text/javascript" src="<%=path%>/qiantai/player/js/player.min.js"></script>
</div>
<!-- 酷播V4.05跨平台代码/结束 -->
 
  

 
  </div>
</div>
  
 
   

        </div>
 
	</body>