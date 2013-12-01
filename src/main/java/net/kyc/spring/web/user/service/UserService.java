package net.kyc.spring.web.user.service;



import net.kyc.spring.web.user.model.User;

public interface UserService {

	//Adding a new user
	public String addUser(User userDetails);
	
	//Fetching user details based on userName
	public User fetchUserDetailsByUserId(int userId);
	
	public User validateUserLogin(String identifier, String password);

	//Updating userDetails
	public String updateUserDetails(User userDetails);
	
	//Deleting a user
	public String deleteUser(int userId);
}
