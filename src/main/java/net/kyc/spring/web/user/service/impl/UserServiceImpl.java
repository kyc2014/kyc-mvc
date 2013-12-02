package net.kyc.spring.web.user.service.impl;


import net.kyc.spring.web.user.dao.UserDao;
import net.kyc.spring.web.user.model.User;
import net.kyc.spring.web.user.service.UserService;

public class UserServiceImpl implements UserService{
	
	private UserDao userDao;
	
	public void setUserDao(UserDao userDao){
		this.userDao = userDao;
	}
	
	public String addUser(User userDetails) {
		// TODO Auto-generated method stub
		String status = userDao.addUser(userDetails);
		return status;
	}

	public String deleteUser(int userId) {
		// TODO Auto-generated method stub
		String status = userDao.deleteUser(userId);
		return status;
	}

	public User fetchUserDetailsByUserId(int userId) {
		// TODO Auto-generated method stub
		User userDetails = (User)userDao.fetchUserDetials(userId);
		return userDetails;
	}

	public String updateUserDetails(User userDetails) {
		// TODO Auto-generated method stub
		String status = userDao.updateUser(userDetails);
		return status;
	}

	@Override
	public User validateUserLogin(String identifier, String password) {
		User userDetails = userDao.validateLogin(identifier, password);
		return userDetails;
	}

}
