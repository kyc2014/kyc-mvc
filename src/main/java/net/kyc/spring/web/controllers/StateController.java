package net.kyc.spring.web.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class StateController {

	@RequestMapping(value="/state/{stateName}")
		public String stateDetails(@PathVariable String stateName){
			return "/state/"+stateName;
		}
}
