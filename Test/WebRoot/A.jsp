<%@page import="java.net.URLDecoder"%>
<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>注册系统</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

<style type="text/css">
table, .a {
border:2px solid;

border-color:#ADFF2F #F0E68C #ADD8E6 #ADD8E6;

border-spacing: 8px;
}
</style>

  </head>
  
  <body>
    
<h1>注册系统</h1>
<hr>
 <%
     
     request.setCharacterEncoding("utf-8");    
     
     String username  = " ";
     String password  = " ";
     
     Cookie[] Cookies = request.getCookies();

      if(Cookies!=null&&Cookies.length>0){ 
     
          for(Cookie c:Cookies){
         
             if(c.getName().equals("username")){
              
                 username = URLDecoder.decode(c.getValue(),"utf-8");
             
              }
             if(c.getName().equals("password")){
                 
                 password = URLDecoder.decode(c.getValue(),"utf-8");
                 
             }
             
         }
          
     }
     
   %>
<form action="B.jsp">
  <table width="500px" align="center" >
   <tr align="center">
     <td class="a" ><font face="楷体" color="red" size="+2"><b>用户注册信息</b></font></td>

   </tr>
         <tr> <td >姓名: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" value="<%=username %>" name="username"><br></td></tr>
         <tr><td> 密码: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="password" value="<%=password %>" name="password"><br></td></tr>
         <tr> <td>性别: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="男"> 男&nbsp;&nbsp;&nbsp;<input type="radio" name="女">女<br></td></tr>
         <tr><td colspan="2"><input type="checkbox" name="isuscookie" />十天内记住我的登录状态</td></tr>
         <tr><td >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="注册">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <input value="重置" type="reset"></td></tr>
   
  </table>
</form>

  </body>
</html>
