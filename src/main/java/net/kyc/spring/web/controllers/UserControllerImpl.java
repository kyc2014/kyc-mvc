package net.kyc.spring.web.controllers;

import net.kyc.spring.web.user.model.User;
import net.kyc.spring.web.user.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class UserControllerImpl {
	
	@Autowired(required=false)
	private UserService userService;

	@RequestMapping(value="/add")
	public String addUser(@RequestParam("userName") String userName, 
			@RequestParam("name") String name,
			@RequestParam("password") String password,
			@RequestParam("email") String email,
			@RequestParam("constituencyCode") int constituencyCode,
			Model model){
		User user = new User();
		user.setUserName(userName);
		//user.setUserId(userId);
		user.setName(name);
		user.setPassword(password);
		user.setEmail(email);
		user.setConstituencyCode(constituencyCode);
		String status = userService.addUser(user);
		model.addAttribute("status", status);
		return "test";
	}
	
	@RequestMapping(value="/update")
	public String updateUserDetails(@RequestParam("userId") int userId,
			@RequestParam("userName") String userName,
			@RequestParam("name") String name,
			@RequestParam("password") String password,
			@RequestParam("email") String email,
			@RequestParam("constituencyCode") int constituencyCode,
			Model model){
		User user = new User();
		user.setUserName(userName);
		//user.setUserId(userId);
		user.setName(name);
		user.setPassword(password);
		user.setEmail(email);
		user.setConstituencyCode(constituencyCode);
		String status = userService.updateUserDetails(user);
		model.addAttribute("status", status);
		return "test";
	}
	
	@RequestMapping(value="/fetch")
	public String retrieveCandidate(@RequestParam("userId") int userId, Model model){
		User user = userService.fetchUserDetailsByUserId(userId);
		model.addAttribute("user", user);
		return "test";
	}
	
	@RequestMapping(value="/delete")
	public String deleteUser(@RequestParam("userId") int userId, Model model){
		String status = userService.deleteUser(userId);
		model.addAttribute("status", status);
		return "test";
	}
	
	
	
	
}
