package com.nc.mylover.service;

import java.util.List;

import com.nc.mylover.bean.User;

public interface IUserService {
  
	// 登录
	public User login(User user) throws Exception;
	
	// 新加用户
	public void addUser(User user) throws Exception;
	
    // 获取所有的用户
	public List<User> getAllUser() throws Exception;
	
	//  获取一个用户
	public User getUserInfo(User user)throws Exception;
	
	// 删除
	public void deleteUser(Long id) throws Exception;
	
}
