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
    
	// 提交       form表单method 改成get,这里改成get
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
	
	// 注册register 没有post或get的方法，链接地址直接可以打开
	@RequestMapping(value="/register")
	public String getRegister(){
//		System.out.println("register,,,,,,,");
		return "register";
	}
	
	
	// 新加add 
	@RequestMapping(value="/add",method=RequestMethod.POST)
	public String getAddUser(@ModelAttribute("user")User user){
		try {
			iUserService.addUser(user);
		} catch (Exception e) {
			e.printStackTrace();
		}
    	return "redirect:/user/userlist";
		
	}
	
	//  获取所有的用户
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
	
		//修改用户
		@RequestMapping(value="/edituser",method=RequestMethod.GET)
		public ModelAndView edituser(@ModelAttribute("user") User userInfo){
			System.out.println("修改的ID为："+userInfo.getId());
			ModelAndView mv = new ModelAndView("edit");  
		    try {
				mv.addObject("users", iUserService.getUserInfo(userInfo));
			} catch (Exception e) {
				e.printStackTrace();
			} 
			return mv;
		}	
		
		// 修改保存
		@RequestMapping(value="/save",method=RequestMethod.POST)
		public String save(@ModelAttribute("user") User userInfo){
			try {
			// 保存
				iUserService.addUser(userInfo);
			} catch (Exception e) {
				e.printStackTrace();
			}
			return "redirect:/user/userlist";
		}
		
		// 删除
		@RequestMapping(value="/deleteuser",method=RequestMethod.GET)
		public String deleteuser(@RequestParam Long id){
			System.out.println("删除ID:"+id);
			try {
				iUserService.deleteUser(id);
			} catch (Exception e) {
				e.printStackTrace();
			}
			return "redirect:/user/userlist";
		}
}

