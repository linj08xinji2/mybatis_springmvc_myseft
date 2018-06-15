package com.nc.mylover.service;

import java.util.List;
import java.util.Map;

import nc.vo.cs.cs2210.BdManagementsecVO;
import nc.vo.cs.cs2210.NewReportVO;
import nc.vo.cs.cs2210.ReportDetailVO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nc.mylover.dao.NCDao;

@Service("iNCquery")
public class NCqueryImpl implements INCquery {
   
	@Autowired
	private NCDao ncDao;
	
	@Override
	public List<NewReportVO> getVO() throws Exception {
		List<NewReportVO> list=	ncDao.getVO();
        return list;
	}

	@Override
	public List<Map<String, Object>> getVOMap(Map<String, Object> map) throws Exception {
		List<Map<String, Object>> list=	ncDao.getVOMap(map);
        return list;
	}

	@Override
	public List<Map<String, Object>> getVOs(String pk_newreport, String pk_corp, int num)
			throws Exception {
		List<Map<String, Object>> list=	ncDao.getVOs(pk_newreport, pk_corp, num);
        return list;
	}

	@Override
	public List<ReportDetailVO> getdetailVOs(Map<String, Object> map)
			throws Exception {
		List<ReportDetailVO> list = ncDao.getdetailVOs(map);
		return list;
	}

	@Override
	public List<BdManagementsecVO> getManagement() throws Exception {
	List<BdManagementsecVO> list=ncDao.getManagement();
		return list;
	}

}
