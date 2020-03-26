<%@page import="java.net.URLDecoder"%>
<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%@ page import="java.text.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>C</title>
    
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
    <h3>您注册的信息是：</h3>
    <% String s1=(String)request.getAttribute("username");%>
    <% String s2=(String)request.getAttribute("password");%>
    <font size="+2" color="bule" face="楷体"><%=s1 %></font>
    <br>
    <font size="+2" color="yellow"><%=s2 %></font>
     <br>
    注册时间是：<br>
    <%
     SimpleDateFormat dat = new SimpleDateFormat("yyyy-MM-dd");
     String s = dat.format(new Date());
    %>
    <%=s %>
  </body>
</html>
