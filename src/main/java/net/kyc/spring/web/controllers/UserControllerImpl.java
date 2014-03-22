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
}
