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
	
	// �������޸��û� 
	@Override
	public void addUser(User user) throws Exception {
     System.out.println("�������޸��û� ��"+user);
     if(user!=null&&user.getId()!=null){
			userDao.updateUser(user);
		}else{
		    userDao.addUser(user);
		} 
    
	}

	 // ��ȡ���е��û�
	@Override
	public List<User> getAllUser() throws Exception {
		return userDao.getAllUser();
	}

	// �û���¼
	@Override
	public User login(User user) throws Exception {
		return userDao.login(user);
	}

	//  ��ȡһ���û�
	@Override
	public User getUserInfo(User user) throws Exception {
		return	userDao.getUserInfo(user);
	}

	//  ɾ��
	@Override
	public void deleteUser(Long id) throws Exception {
		userDao.deleteUser(id);
	}

}
