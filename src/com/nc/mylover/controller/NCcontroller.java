package com.nc.mylover.controller;

import java.util.List;
import java.util.Map;

import nc.vo.cs.cs2210.BdManagementsecVO;
import nc.vo.cs.cs2210.NewReportVO;
import nc.vo.cs.cs2210.ReportDetailVO;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.nc.mylover.service.INCquery;
@Controller
@RequestMapping(value="/ncoperation")
public class NCcontroller {

	@Autowired
	private INCquery iNCquery;
	
	// NC
	@RequestMapping(value = "/nc")
	public String toNC() {

		return "redirect:/ncoperation/ncquery";
	}
	
	//  ��ȡ���е��û�
	@RequestMapping(value="/ncquery",method=RequestMethod.GET)
	public ModelAndView getAllnewreport(){
		ModelAndView mv = new ModelAndView("ncwork");   
	    try {
	    	List<NewReportVO> list=iNCquery.getVO();
			mv.addObject("newreportList", list);
		} catch (Exception e) {
			e.printStackTrace();
		} 
		return mv;
	}
	
	// ����һ��Ҫ�е�
	@RequestMapping(value="/ncparams/",method=RequestMethod.GET)
	public String getParams(@RequestParam(value="pk_newreport") String pk_newreport,
			@RequestParam(value="pk_corp") String pk_corp,
			@RequestParam(value="num") int num ,Map<String, Object> maps){
	System.out.println("result:"+pk_newreport+pk_corp+"  aaa:"+num);
	try {
		List<Map<String, Object>> list= iNCquery.getVOs(pk_newreport, pk_corp, num);
		maps.put("newreportList", list);
	} catch (Exception e) {
		e.printStackTrace();
	}
		return "ncwork";
	}
	
	/**
	 * ����·�����и�id�ı���ֵ������ͨ��@PathVariable����ȡ  @RequestMapping(value = "/page/{id}", method = RequestMethod.GET) 
	 *  
       @RequestParam������þ�̬��URL�������     springע��ʱaction���õ���
	 */
	@RequestMapping(value="/ncmaps",method=RequestMethod.GET)
	public String getMaps(@RequestParam Map<String, Object> paraMap,
			Map<String, Object> maps){  // maps �ǿ�ܵײ����õģ����ؽ���
		System.out.println(paraMap);
		try {
			List<Map<String, Object>> list=iNCquery.getVOMap(paraMap);
			maps.put("newreportList", list);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "ncwork";
	}
	
	// ����
	@RequestMapping(value="/reportdetail",method=RequestMethod.GET)
	public String getdetail(@RequestParam Map<String, Object> paraMap,
			Map<String, Object> maps){ 
		try {
			List<ReportDetailVO> list=iNCquery.getdetailVOs(paraMap);
			maps.put("reportdetailList", list);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "ncwork";
	}
	
	@ResponseBody  // һ��Ҫ���������Ҫ��Ȼû���ݼ��س���
	@RequestMapping(value="/ref")
	public List<BdManagementsecVO> getref(Map<String, Object> maps){ 
		List<BdManagementsecVO> list = null;
		try {
			list = iNCquery.getManagement();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return list;
	}
	
	@RequestMapping(value="/refab")
	public String getrefab(Map<String, Object> maps){ 
		return "management";
	}
	
	@RequestMapping(value="/query")
	public void getQuery(Map<String, Object> maps){ 
		System.out.println("aabb");
	}
	
	
}
