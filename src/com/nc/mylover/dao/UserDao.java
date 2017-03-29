package com.nc.mylover.dao;

import java.util.List;

import com.nc.mylover.bean.User;

public interface UserDao {
	// 新加用户
	public void addUser(User user);
	
	// 更新用户
	public void updateUser(User user);
	
	//  获取所有的用户
	public List<User> getAllUser();
	
	// 登录
    public User login(User user);
   
    // 获取一人用户
    public User getUserInfo(User user);
    
	// 删除
	public void deleteUser(Long id) throws Exception;
}
