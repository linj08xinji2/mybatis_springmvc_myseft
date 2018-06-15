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
  
    <script type="text/javascript" language="javascript"  
   src="<%=request.getContextPath()%>/js/My97DatePicker/WdatePicker.js">
   </script>
	<script src="<%=request.getContextPath()%>/js/jquery-3.1.1.min.js"></script>
	<script src="<%=request.getContextPath()%>/js/jquery.validate.min.js"></script>
	<script src="<%=request.getContextPath()%>/js/messages_zh.js"></script>
	<script src="<%=request.getContextPath()%>/js/jquery-easyui-1.5.1/jquery.easyui.min.js"></script>



	<script>
		$(document).ready(function() {
			$("h2").click(function() {
				$(this).hide();
			});
		});
	</script>

	<script >
		/* $.validator.setDefaults({
		  submitHandler:function(){
		    alert("提交事件!");
		  }
		}); */
		$().ready(function(){
		$("#commentForm").validate();
		});
	</script>
	
	<form class="cmxform" id="commentForm" method="get" action="">
	<fieldset>
    <legend>输入您的名字，邮箱，URL，备注。</legend>
	<p>
	<label for="">Name (必需, 最小两个字母)</label>
	 <input id="cname" name="name" minlength="2" type="text" required>
	</p>
	  <p>
      <label for="cemail">E-Mail (必需)</label>
      <input id="cemail" type="email" name="email" required>
    </p>
    <p>
      <label for="curl">URL (可选)</label>
      <input id="curl" type="url" name="url">
    </p>
    <p>
      <label for="ccomment">备注 (必需)</label>
      <textarea id="ccomment" name="comment" required></textarea>
    </p>
    <p>
      <input class="submit" type="submit" value="Submit">
    </p>
	</fieldset>
	</form>

	<form action="/mybatismvc/user/login" method="post">
   		<br>用户账号：<input  type="text" name="account" value=""/>
   		<br/>
   		<br>用户密码：<input  type="text" name="password" value=""/>
   		<br/>
   		<br><input type="submit" value="提交" /> &nbsp;&nbsp;&nbsp;&nbsp;
   		<input type="button" onclick="window.location.href='/mybatismvc/user/register'" value="注册sss" />
   </form>
    <br/><br/><br/><br/>
    <h2>以下是NC尝试，主要是传参数，返回值</h2>
     <input type="button" onclick="window.location.href='/mybatismvc/ncoperation/nc'" value="到NC" />
     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
  
  <form action="<%=request.getContextPath()%>/ncoperation/ncparams">
   		<br>pk_newreport：<input  type="text" name="pk_newreport"  />
   		<br/>
   		<br>pk_corp：<input  type="text" name="pk_corp" />
   		<br/>
   		<br>num：<input  type="text" name="num" />
   		<br/>
   		<br><input type="submit" value="链接多个参数" />
   		</form>
   		
   		&nbsp;&nbsp;&nbsp;&nbsp;
   		 
    <form action="<%=request.getContextPath()%>/ncoperation/ncmaps">
   		<br>pk_newreport：<input  type="text" name="pk_newreport"  />
   		<br/>
   		<br>pk_corp：<input  type="text" name="pk_corp" />
   		<br/>
   		<br>num：<input  type="text" name="num" />
   		<br/>
   		<br><input type="submit" value="链接多个参数MAPs" />
   		</form>		 
   		 
  </body>
  
  
</html>
