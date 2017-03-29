package com.nc.mylover.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.nc.mylover.bean.User;
import com.nc.mylover.service.IUserService;

@Controller
@RequestMapping(value="/user")
public class UserController {
	@Autowired
	private IUserService iUserService;
    
	// �ύ       form��method �ĳ�get,����ĳ�get
	@RequestMapping(value="/login",method=RequestMethod.POST)
	public String getLogin(@ModelAttribute("user")User user){
		User user2=null;
		try {
			 user2 =iUserService.login(user);
		} catch (Exception e) {
			e.printStackTrace();
		}
		if(null==user2){
			return "fail";
		}
		return "redirect:/user/userlist";
	}
	
	// ע��register û��post��get�ķ��������ӵ�ֱַ�ӿ��Դ�
	@RequestMapping(value="/register")
	public String getRegister(){
//		System.out.println("register,,,,,,,");
		return "register";
	}
	
	
	// �¼�add 
	@RequestMapping(value="/add",method=RequestMethod.POST)
	public String getAddUser(@ModelAttribute("user")User user){
		try {
			iUserService.addUser(user);
		} catch (Exception e) {
			e.printStackTrace();
		}
    	return "redirect:/user/userlist";
		
	}
	
	//  ��ȡ���е��û�
		@RequestMapping(value="/userlist",method=RequestMethod.GET)
		public ModelAndView getAllUser(){
			ModelAndView mv = new ModelAndView("list");   // XXX  user/list
		    try {
				mv.addObject("userlist", iUserService.getAllUser());
//				System.out.println("number:");
			} catch (Exception e) {
				e.printStackTrace();
			} 
			return mv;
		}
	
		//�޸��û�
		@RequestMapping(value="/edituser",method=RequestMethod.GET)
		public ModelAndView edituser(@ModelAttribute("user") User userInfo){
			System.out.println("�޸ĵ�IDΪ��"+userInfo.getId());
			ModelAndView mv = new ModelAndView("edit");  
		    try {
				mv.addObject("users", iUserService.getUserInfo(userInfo));
			} catch (Exception e) {
				e.printStackTrace();
			} 
			return mv;
		}	
		
		// �޸ı���
		@RequestMapping(value="/save",method=RequestMethod.POST)
		public String save(@ModelAttribute("user") User userInfo){
			try {
			// ����
				iUserService.addUser(userInfo);
			} catch (Exception e) {
				e.printStackTrace();
			}
			return "redirect:/user/userlist";
		}
		
		// ɾ��
		@RequestMapping(value="/deleteuser",method=RequestMethod.GET)
		public String deleteuser(@RequestParam Long id){
			System.out.println("ɾ��ID:"+id);
			try {
				iUserService.deleteUser(id);
			} catch (Exception e) {
				e.printStackTrace();
			}
			return "redirect:/user/userlist";
		}
}

