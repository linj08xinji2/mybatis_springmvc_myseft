<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ncwork</title>
</head>
<body>
	<%-- <table>
		<tr>
			<th>pk</th>
			<th>单据号</th>
			<th>公司pk</th>
		</tr>
		<c:forEach items="${newreportList}" var="newreport">
			<tr>
				<td>${newreport.pk_newreport}</td>
				<td>${newreport.vbillno}</td>
				<td>${newreport.pk_corp}</td>
				
				<!-- 以下是map返回值结果 
				<result property="vbillno" column="vbillno"/> 少了column="vbillno"
				要大写${newreport.get("VBILLNO")}
				-->
				<td>${newreport.get("pk_newreport")}</td>
				<td>${newreport.get("vbillno")}</td>
				<td>${newreport.get("pk_corp")}</td>
			</tr>
		</c:forEach>
	</table> --%>
	
	
	<table>
		<tr>
			<th>服务中心</th>
			<th>房产名称</th>
			<th>客户姓名</th>
			<th>手机</th>
			<th>合同收楼</th>
			<th>通知收楼</th>
			<th>是否完成</th>
			<th>评价</th>
			<th>单号</th>
			<th>16进制单号</th>
			<th>接单人</th>
			<th>是否物业维修</th>
			<th>接单日期</th>
			<th>增行日期</th>
			<th>完成时间</th>
			<th>报事内容</th>
			<th>问题补充描述</th>
			<th>责任施工单位</th>
			<th>施工单位责任占比</th>
			<th>维修问题</th>
			<th>签证</th>
			<th>单价</th>
			<th>工程量</th>
			<th>单位</th>
			<th>小计</th>
			<th>备注</th>
		</tr>
		<c:forEach items="${reportdetailList}" var="reportdetail">
			<tr>
				<td>${reportdetail.vmanagementsecname }</td>
				<td>${reportdetail.vhname }</td>
				<td>${reportdetail.vcusname}</td>
				<td>${reportdetail.vmobilephone }</td>
				<td>${reportdetail.reserve2 }</td>
				<td>${reportdetail.reserve3 }</td>
				<td>${reportdetail.iscomplete }</td>
				<td>${reportdetail.vremark}</td>
				<td>${reportdetail.vbillno}</td>
				<td>${reportdetail.vdef7}</td>
				<td>${reportdetail.user_name}</td>
				<td>${reportdetail.ireportstatus}</td>
				<td>${reportdetail.dacceptdate}</td>
				<td>${reportdetail.vdef2}</td>
				<td>${reportdetail.vdef10}</td>
				<td>${reportdetail.vreportcontent }</td>
				<td>${reportdetail.vdef3}</td>
				<td>${reportdetail.sgvname}</td>
				<td>${reportdetail.vdef1}</td>
				<td>${reportdetail.mainproblem}</td>
				<td>${reportdetail.vname}</td>
				<td>${reportdetail.price}</td>
				<td>${reportdetail.quantities }</td>
				<td>${reportdetail.unit}</td>
				<td>${reportdetail.coutprice}</td>
				<td>${reportdetail.vmemo}</td>
			</tr>
		</c:forEach>
	</table>
	
</body>
</html>