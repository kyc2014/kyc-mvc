package net.kyc.spring.web.controllers;


import net.kyc.spring.web.candidate.model.Candidate;
import net.kyc.spring.web.candidate.service.CandidateService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Sample {

	@RequestMapping("/test")
	public String test(){
		return "test";
	}
	@RequestMapping(value="{candidateName}")
	public String retrieveCandidate(@PathVariable String candidateName, Model model){
		return "";
	}
}
