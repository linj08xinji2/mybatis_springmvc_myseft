<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户列表</title>
</head>
<body>
  
  <form action="/mybatismvc/user/add"  method="post">
  	<table>
  		<tr>
  			 
  			<th>账号</th>
  			<td><input type="text"  name="account" /> </td>
  		</tr>
  		<tr>
  			 
  			<th>密码</th>
  			<td><input type="text"  name="password" /></td>
  		</tr>
  		<tr>
  			<td colspan="2"><input type="submit" value="添加"> </td>
  		</tr>
  	</table>
  	</form>
     <br/>  <br/> 
	<table>
  		<tr>
  			<th>id</th>
  			<th>账号</th>
  			<th>密码</th>
  		</tr>
  	<c:forEach items="${userlist}" var="user">
  	  	<tr>
  			<td>${user.id}</td>
  			<td>${user.account}</td>
  			<td>${user.password}</td>
  		<td><a href="<%=request.getContextPath()%>/user/edituser?id=${user.id}">修改</a>
  		&nbsp;&nbsp;&nbsp;&nbsp;
  		<a href="<%=request.getContextPath()%>/user/deleteuser?id=${user.id}">删除</a>
  		 </td>	
  			</tr>
  	</c:forEach>	 
  		
  		
  		</table>
</body>
</html>