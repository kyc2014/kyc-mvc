package net.kyc.spring.web.user.dao;

import net.kyc.spring.web.user.model.User;

public interface UserDao {
	
	public String addUser(User userDetails);
	
	public User fetchUserDetials(int userId);
	
	public String updateUser(User userDetails);
	
	public String deleteUser(int userId);
}
