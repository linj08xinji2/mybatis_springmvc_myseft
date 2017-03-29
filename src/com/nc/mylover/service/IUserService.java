package com.nc.mylover.service;

import java.util.List;

import com.nc.mylover.bean.User;

public interface IUserService {
  
	// ��¼
	public User login(User user) throws Exception;
	
	// �¼��û�
	public void addUser(User user) throws Exception;
	
    // ��ȡ���е��û�
	public List<User> getAllUser() throws Exception;
	
	//  ��ȡһ���û�
	public User getUserInfo(User user)throws Exception;
	
	// ɾ��
	public void deleteUser(Long id) throws Exception;
	
}
