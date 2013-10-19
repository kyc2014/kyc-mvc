package net.knowyourcandidate.spring.web.controllers;


import net.knowyourcandidate.spring.web.candidate.model.Candidate;
import net.knowyourcandidate.spring.web.candidate.service.CandidateService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Sample {
	@Autowired
	private CandidateService candidateService;
	@RequestMapping("/test")
	public String test(){
		return "test";
	}
	@RequestMapping(value="{candidateName}")
	public String retrieveCandidate(@PathVariable String candidateName, Model model){
		Candidate candidate = candidateService.retrieveCandidateByName(candidateName);
		model.addAttribute("candidate", candidate);
		return "test";
	}
}
