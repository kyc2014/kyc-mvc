package net.kyc.spring.web.controllers;

import javax.servlet.http.HttpServletRequest;

import net.kyc.errorcodes.ErrorCodes;
import net.kyc.spring.web.user.model.User;
import net.kyc.spring.web.user.service.UserService;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.request.WebRequest;

@Controller
public class UserController {
	
	@Autowired
	private UserService userService;
	
	@RequestMapping(value="/user/loginpage")
	public String loginpage(){
		return "login";
	}
	
	@RequestMapping(value="/user/login")
	public String login(@RequestParam("user_identifier") String userIdentifier,
			@RequestParam("password") String password, WebRequest request){
		User user = userService.validateUserLogin(userIdentifier, password);
		if(user == null){
			request.setAttribute("error", "0", WebRequest.SCOPE_REQUEST);
			request.setAttribute("errorMessage", ErrorCodes.userLoginError, WebRequest.SCOPE_REQUEST);
		}
		else{
			request.setAttribute("userName", user.getUserName(), WebRequest.SCOPE_SESSION);
			request.setAttribute("firstName", user.getFirstName(), WebRequest.SCOPE_SESSION);
		}
		
		return "login";
	}
	
	@RequestMapping(value="/user/logout")
	public String logout(HttpServletRequest request){
		request.getSession().invalidate();
		return "login";
	}

	@RequestMapping(value="/user/register")
	public String register(){
		return "/users/register";
	}
	
	@RequestMapping(value="/user/add", method=RequestMethod.POST)
	public String addUser(@RequestParam(value="first_name", required=true) String firstName, 
			@RequestParam("second_name") String secondName,
			@RequestParam(value="email", required=true) String email,
			@RequestParam(value="password", required=true) String password,
			@RequestParam("constituency_code") int constituencyCode,
			@RequestParam(value="dob", required=true) String dob,
			@RequestParam(value="user_name", required=true) String userName,
			@RequestParam(value="gender", required=true) String gender,
			@RequestParam(value="mobile", required=true) String mobile,
			Model model){
		User user = new User();
		user.setUserName(userName);
		//user.setUserId(userId);
		user.setFirstName(firstName);
		user.setSecondName(secondName);
		user.setPassword(password);
		user.setEmail(email);
		user.setGender(gender);
		user.setDob(dob);
		user.setConstituencyCode(constituencyCode);
		String status = userService.addUser(user);
		System.out.println(status);
		model.addAttribute("status", status);
		return "login.jsp";
	}
	
	@RequestMapping(value="/update")
	public String updateUserDetails(@RequestParam("userId") int userId,
			@RequestParam("userName") String userName,
			@RequestParam("name") String name,
			@RequestParam("password") String password,
			@RequestParam("email") String email,
			@RequestParam("constituencyCode") int constituencyCode,
			Model model){
		
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
