<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>查询报表</title>
   
  </head>
  
  <body>
  
    <script type="text/javascript" language="javascript"  
   src="<%=request.getContextPath()%>/js/My97DatePicker/WdatePicker.js">
   </script>
	<script src="<%=request.getContextPath()%>/js/jquery-3.1.1.min.js"></script>
	<script src="<%=request.getContextPath()%>/js/jquery.validate.min.js"></script>
	<script src="<%=request.getContextPath()%>/js/messages_zh.js"></script>
	<script src="<%=request.getContextPath()%>/js/jquery-easyui-1.5.1/jquery.easyui.min.js"></script>
	
	<script type="text/javascript">
		function openwindow() {
	  var result=window.showModalDialog("/mybatismvc/ncoperation/refab","_blank","status:no;scroll:no;dialogWidth:800px;dialogHeight:400px");	 
	 /*    var result=$('#pk_managementsecid').dialog('open').dialog("/mybatismvc/ncoperation/refab","_blank","status:no;scroll:no;dialogWidth:800px;dialogHeight:400px");			 */
	/* alert("ppp:"+result); */
	 if(result){/* open  showModalDialog window $('#pk_managementsecid') */
	 document.myform.pk_managementsecid.value = result.pk_managementsecid;
	} 
	  alert("sss:"+ result.vmanagementsecname); 
		}
	</script>

    <h2>查询签证完成明细</h2>
      <form  action="<%=request.getContextPath()%>/ncoperation/reportdetail" name="myform" >
   		<br>服务中心主键：
   		<input id="pk_managementsecid" name="pk_managementsecid" type="text" onDblClick="openwindow()" value="" size="50">
   		<br/>
   		<br>评价开始日期：<input  type="text" name="dcheckdatebegin"  class="Wdate"  onclick="WdatePicker()" />
   		<br/>
   		<br>评价截止日期：<input  type="text" name="dcheckdateend" class="Wdate"  onclick="WdatePicker()"  />
   		<br/>
   		<br>完成开始日期：<input  type="text" name="ddealdatebegin" class="Wdate"  onclick="WdatePicker()"  />
   		<br/>
   		<br>完成截止日期：<input  type="text" name="ddealdateend" class="Wdate"  onclick="WdatePicker()"  />
   		<br/>
   		<br>是否评价：
   		<select name="vremark" size="1" tabindex="1" title="aaa">
   		  <option value="0" selected>满意</option>
   		  <option value="6">不满意</option>
	    </select>
   		<br/>
   		<br><input type="submit" value="查询" />
  </form>
  </body>
  
  
</html>
