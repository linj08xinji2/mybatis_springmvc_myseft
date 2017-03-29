<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>welcome to mypage</title>
  </head>
  
  <body>
   <form action="/mybatismvc/user/login" method="post">
   		<br>用户账号：<input  type="text" name="account" value=""/>
   		<br/>
   		<br>用户密码：<input  type="text" name="password" value=""/>
   		<br/>
   		<br><input type="submit" value="提交" /> &nbsp;&nbsp;&nbsp;&nbsp;
   		<input type="button" onclick="window.location.href='/mybatismvc/user/register'" value="注册sss" />
   </form>
  </body>
</html>
