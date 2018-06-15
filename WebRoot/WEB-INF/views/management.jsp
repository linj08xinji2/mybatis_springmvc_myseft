<%@page import="org.springframework.web.context.request.RequestScope"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="keywords" content="jquery,ui,easy,easyui,web">
	<meta name="description" content="easyui help you build your web page easily!">
	<title>请选择服务中心</title>
	<link rel="stylesheet" type="text/css" href="http://www.w3cschool.cc/try/jeasyui/themes/default/easyui.css">
	<link rel="stylesheet" type="text/css" href="http://www.w3cschool.cc/try/jeasyui/themes/icon.css">
	<script src="<%=request.getContextPath()%>/js/jquery-3.1.1.min.js"></script>
	<script src="<%=request.getContextPath()%>/js/jquery-easyui-1.5.1/jquery.easyui.min.js"></script>
	<script>
		function getSelections(){
			var ids = [];
			var rows = $('#tt').datagrid('getSelections');
			for(var i=0; i<rows.length; i++){
				ids.push(rows[i].pk_managementsecid);
			}
			alert(ids.join('\n'));
		}
		
		$(document).ready(function(){ //呈现列表数据
          $('#tt').datagrid({ onDblClickRow:
            function () {
                //单击行的时候，将单选按钮设置为选中
                var row = $('#tt').datagrid("getSelected");
               if (row){
			 	alert('服务中心主键:'+row.pk_managementsecid+" 服务名称；"+row.vmanagementsecname); 
				 window.returnValue=row;
			     window.close();
			}  
            }
        });
});
	</script>

</head>

<body>
<!-- 如果不去掉class="easyui-datagrid" 数据会重复加载 /mybatismvc/ncoperation/ref 会
执行两次  -->

	<table width="718" height="293" id="tt" style="width:600px;height:250px"
			title="双击选择"
			url="/mybatismvc/ncoperation/ref"  singleSelect="true" iconCls="icon-save" fitColumns="false" >
			<thead>
			<tr>
				<th field="pk_managementsecid" id="pk_managementsecid" width="194" >pk_managementsecid</th>
				 <th width="111" nowrap field="vmanagementseccode" >服务中心编码</th>
				<th width="207" nowrap field="vmanagementsecname">服务中心名称</th>
				 <th width="68" nowrap field="pk_corp">公司主键</th>
			</tr>
		</thead>

</table>



	<%-- <table >
		<tr>
			<th>服务中心主键</th>
			<th>服务中心名称</th>
			<th>公司主键</th>
		</tr>
		
		<c:forEach items="${managements}" var="managementvo">
			<tr onclick="getSelected()">
				<td>${managementvo.pk_managementsecid}</td>
				<td>${managementvo.vmanagementsecname}</td>
				<td>${managementvo.pk_corp}</td>
			</tr>
			
		</c:forEach>
	</table> --%>

</body>
</html>
