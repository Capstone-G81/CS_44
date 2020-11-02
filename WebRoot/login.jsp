<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
	<meta http-equiv="pragma" content="no-cache"/>
	<meta http-equiv="cache-control" content="no-cache"/>
	<meta http-equiv="expires" content="0"/>    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3"/>
	<meta http-equiv="description" content="This is my page"/>

	<script type='text/javascript' src='<%=path %>/dwr/interface/loginService.js'></script>
        <script type='text/javascript' src='<%=path %>/dwr/engine.js'></script>
        <script type='text/javascript' src='<%=path %>/dwr/util.js'></script>
        
		<script language="javascript">
		function check1()
		{                                                                                         
		     if(document.loginForm.userName.value=="")
			 {
			 	alert("Please enter username");
				document.loginForm.userName.focus();
				return false;
			 }
			 if(document.loginForm.userPw.value=="")
			 {
			 	alert("Please enter password");
				document.loginForm.userPw.focus();
				return false;
			 }
		 
			 document.getElementById("indicator").style.display="block";
			 loginService.login(document.loginForm.userName.value,document.loginForm.userPw.value,document.loginForm.utype.value,callback);
		}
		
		function callback(data)
		{
		    document.getElementById("indicator").style.display="none";
		    if(data=="no")
		    {
		        alert("Incorrect username or password");
		    }
		    if(data=="yes")
		    {
		        alert("Through verification, system login is successful");
		        window.location.href="<%=path %>/loginSuccess.jsp";
		    }
		    
		}
	    </script>
	
	 
  </head>
  
  <body>
  	<link href="<%=path %>/css/login.css" rel="stylesheet"/>
	
  <form action="<%=path %>/admin/index.jsp" id="loginForm" name="loginForm" method="post">
  <div class="toparea clearfix">
    <div class="logo"><img height="42" src="<%=path %>/images/logo.jpg"></div>
    <div class="slogan"><img src="<%=path %>/images/slogan.jpg"></div>
</div>
<div class="centerarea" style="background-image:url(&#39;<%=path %>/images/login-bg-autumn.jpg&#39;)">
    <div class="mainbox">
        <div class="notice">
            <div class="icon"></div>
            <div class="content">
                
            </div>
        </div>
        <div class="login-box-wrap clearfix">
            <div class="login-box">
               
                <div class="typename">Management System</div>
                <div class="userloginbox" style="display: block;">
                  
                    <div class="loginmessage"><span class="erroricon"></span><p>Please enter password</p></div>
                    <div class="username field item-warning">
                        <span class="icon"></span>
                        <span class="username-label" style="display: inline;"></span>
                        <input type="text" class="txtbox" id="userName" placeholder="Username"  name="userName"/>
                    </div>
                    <div class="pwd field">
                        <span class="icon"></span>
                        <span class="pwd-label" style="display: inline;"></span>
                        <input type="password" class="txtbox" id="userPw" placeholder="Password" name="userPw"/>
                    </div>
                    <div class="verificationcode clearfix">
                         
                            <select name="utype" style="margin-top: 15px;height: 25px;">
							   <option  value="0">Admin</option>
							   <option value="1">Teacher</option>
							</select>
                       
                         
                    </div>
                    <div class="submit">
                        <input type="button" class="login-btn" id="loginbtn" value="log in" onClick="check1()"/>
                    </div>
                     <img id="indicator" src="<%=path %>/img/loading.gif" style="display:none"/>
                </div>
                
            </div>
            <div class="tips">Please protect your personal account information to prevent being deceived!</div>
        </div>
    </div>
</div>
<div class="footer clearfix">
    <div class="intro01">Flexible learning method</div>
    <div class="intro02">Excellent educational resources</div>
    <div class="intro03">Efficient education service</div>
</div>
<div class="copyright">Learning Management System Copyright ©2019-2020  ALL rights reserved</div>


  
   
  </body>
</html>
