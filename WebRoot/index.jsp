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
   <link rel="stylesheet" type="text/css" href="http://www.w3cschool.cc/try/jeasyui/themes/default/easyui.css">
	<link rel="stylesheet" type="text/css" href="http://www.w3cschool.cc/try/jeasyui/themes/icon.css">
	<link rel="stylesheet" type="text/css" href="http://www.w3cschool.cc/try/jeasyui/demo/demo.css">
   
  </head>
  
  <body>
  
    <script type="text/javascript" language="javascript"  
   src="<%=request.getContextPath()%>/js/My97DatePicker/WdatePicker.js">
   </script>
	<script src="<%=request.getContextPath()%>/js/jquery-3.1.1.min.js"></script>
	<script src="<%=request.getContextPath()%>/js/jquery.validate.min.js"></script>
	<script src="<%=request.getContextPath()%>/js/messages_zh.js"></script>
	<script src="<%=request.getContextPath()%>/js/jquery-easyui-1.5.1/jquery.easyui.min.js"></script>
	
	
  </body>
  
  
</html>
