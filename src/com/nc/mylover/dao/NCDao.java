package com.nc.mylover.dao;

import java.util.List;
import java.util.Map;

import nc.vo.cs.cs2210.BdManagementsecVO;
import nc.vo.cs.cs2210.NewReportVO;
import nc.vo.cs.cs2210.ReportDetailVO;

public interface NCDao {

	public List<NewReportVO> getVO() throws Exception;
	
	public List<Map<String, Object>> getVOMap( Map<String, Object> map) throws Exception;
	
	public List<Map<String, Object>> getVOs(String pk_newreport, String pk_corp, int num)
			throws Exception;
	
	public List<ReportDetailVO> getdetailVOs(Map<String, Object> map)
			throws Exception;
	
	public List<BdManagementsecVO> getManagement() throws Exception;
}
