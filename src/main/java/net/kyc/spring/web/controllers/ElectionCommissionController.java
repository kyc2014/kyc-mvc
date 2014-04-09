package net.kyc.spring.web.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ElectionCommissionController {

	@RequestMapping(value="/eci/{election}")
		public String stateDetails(@PathVariable String election){
			return "eci/"+election;
		}
}
