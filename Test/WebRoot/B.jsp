<%@page import="java.net.URLEncoder"%>
<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>B</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
  <%
      request.setCharacterEncoding("utf-8");
      //首先判断用户是否选择了记住登录状态
      String[] cookies = request.getParameterValues("isuscookie");
      
   if(cookies!=null&&cookies.length>0){
      //把用户名和密码都保存在cookies对象里面
      String username = URLEncoder.encode(request.getParameter("username"),"utf-8");
      String password = URLEncoder.encode(request.getParameter("password"),"utf-8");
     
      Cookie usernamecookies = new Cookie("username",username);
      Cookie passwordcookies = new Cookie("password",password);
      
      usernamecookies.setMaxAge(864000);
      passwordcookies.setMaxAge(864000);
      
      response.addCookie(usernamecookies);
      response.addCookie(passwordcookies);
   }
   
  else{
  
      Cookie[] Cookies = request.getCookies();
      
      if(Cookies!=null&&Cookies.length>0){
      
         for(Cookie c:Cookies){
         
             if(c.getName().equals("username")||c.getName().equals("password")){

                  c.setMaxAge(0);
                  response.addCookie(c);
              }
             
          }
        
      }
    
  }
  
  %>
     <%
           request.setCharacterEncoding("UTF-8");//解决中文乱码问题
           String name=request.getParameter("username");
           if(name.trim().equals("石俊熠")){
           request.setAttribute("username", name);
           request.setAttribute("password", request.getParameter("password"));
     %>
            <jsp:forward page="C.jsp" />
     <%  }
     else
     %>
            <jsp:forward page="Demo8.html" ></jsp:forward>
  </body>
</html>
