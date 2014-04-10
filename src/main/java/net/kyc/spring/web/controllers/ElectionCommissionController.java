package net.kyc.spring.web.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ElectionCommissionController {

	@RequestMapping(value="/eci/{path}")
		public String stateDetails(@PathVariable String path){
			return "eci/"+path;
		}
}
