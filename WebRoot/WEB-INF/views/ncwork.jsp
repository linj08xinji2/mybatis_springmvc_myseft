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
			<th nowrap>服务中心</th>
			<th nowrap>房产名称</th>
			<th nowrap>客户姓名</th>
			<th nowrap>手机</th>
			<th nowrap>合同收楼</th>
			<th nowrap>通知收楼</th>
			<th nowrap>是否完成</th>
			<th nowrap>评价</th>
			<th nowrap>单号</th>
			<th nowrap>16进制单号</th>
			<th nowrap>接单人</th>
			<th nowrap>是否物业维修</th>
			<th nowrap>接单日期</th>
			<th nowrap>增行日期</th>
			<th nowrap>完成时间</th>
			<th nowrap>报事内容</th>
			<th nowrap>问题补充描述</th>
			<th nowrap>责任施工单位</th>
			<th nowrap>施工单位责任占比</th>
			<th nowrap>维修问题</th>
			<th nowrap>签证</th>
			<th nowrap>单价</th>
			<th nowrap>工程量</th>
			<th nowrap>单位</th>
			<th nowrap>小计</th>
			<th nowrap>备注</th>
		</tr>
		<c:forEach items="${reportdetailList}" var="reportdetail">
			<tr>
				<td nowrap><div align="center">${reportdetail.vmanagementsecname }</div></td>
				<td nowrap><div align="center">${reportdetail.vhname }</div></td>
				<td nowrap><div align="center">${reportdetail.vcusname}</div></td>
				<td nowrap><div align="center">${reportdetail.vmobilephone }</div></td>
				<td nowrap><div align="center">${reportdetail.reserve2 }</div></td>
				<td nowrap><div align="center">${reportdetail.reserve3 }</div></td>
				<td nowrap><div align="center">${reportdetail.iscomplete }</div></td>
				<td nowrap><div align="center">${reportdetail.vremark}</div></td>
				<td nowrap><div align="center">${reportdetail.vbillno}</div></td>
				<td nowrap><div align="center">${reportdetail.vdef7}</div></td>
				<td nowrap><div align="center">${reportdetail.user_name}</div></td>
				<td nowrap><div align="center">${reportdetail.ireportstatus}</div></td>
				<td nowrap><div align="center">${reportdetail.dacceptdate}</div></td>
				<td nowrap><div align="center">${reportdetail.vdef2}</div></td>
				<td nowrap><div align="center">${reportdetail.vdef10}</div></td>
				<td nowrap><div align="center">${reportdetail.vreportcontent }</div></td>
				<td nowrap><div align="center">${reportdetail.vdef3}</div></td>
				<td nowrap><div align="center">${reportdetail.sgvname}</div></td>
				<td nowrap><div align="center">${reportdetail.vdef1}</div></td>
				<td nowrap><div align="center">${reportdetail.mainproblem}</div></td>
				<td nowrap><div align="center">${reportdetail.vname}</div></td>
				<td nowrap><div align="center">${reportdetail.price}</div></td>
				<td nowrap><div align="center">${reportdetail.quantities }</div></td>
				<td nowrap><div align="center">${reportdetail.unit}</div></td>
				<td nowrap><div align="center">${reportdetail.coutprice}</div></td>
				<td nowrap><div align="center">${reportdetail.vmemo}</div></td>
			</tr>
		</c:forEach>
</table>
	
</body>
</html>