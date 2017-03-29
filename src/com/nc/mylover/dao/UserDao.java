package com.nc.mylover.dao;

import java.util.List;

import com.nc.mylover.bean.User;

public interface UserDao {
	// �¼��û�
	public void addUser(User user);
	
	// �����û�
	public void updateUser(User user);
	
	//  ��ȡ���е��û�
	public List<User> getAllUser();
	
	// ��¼
    public User login(User user);
   
    // ��ȡһ���û�
    public User getUserInfo(User user);
    
	// ɾ��
	public void deleteUser(Long id) throws Exception;
}
