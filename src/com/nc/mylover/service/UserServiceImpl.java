package com.nc.mylover.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nc.mylover.bean.User;
import com.nc.mylover.dao.UserDao;

@Service(value="iUserService")
public class UserServiceImpl implements IUserService {

	@Autowired
	private UserDao userDao;
	
	// 新增或修改用户 
	@Override
	public void addUser(User user) throws Exception {
     System.out.println("新增或修改用户 ："+user);
     if(user!=null&&user.getId()!=null){
			userDao.updateUser(user);
		}else{
		    userDao.addUser(user);
		} 
    
	}

	 // 获取所有的用户
	@Override
	public List<User> getAllUser() throws Exception {
		return userDao.getAllUser();
	}

	// 用户登录
	@Override
	public User login(User user) throws Exception {
		return userDao.login(user);
	}

	//  获取一个用户
	@Override
	public User getUserInfo(User user) throws Exception {
		return	userDao.getUserInfo(user);
	}

	//  删除
	@Override
	public void deleteUser(Long id) throws Exception {
		userDao.deleteUser(id);
	}

}
