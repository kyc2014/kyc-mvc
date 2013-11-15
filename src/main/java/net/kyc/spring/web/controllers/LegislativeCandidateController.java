package net.kyc.spring.web.controllers;

import net.knowyourcandidate.spring.web.candidate.service.CandidateService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LegislativeCandidateController {
	@Autowired
	private CandidateService candidateService;
	@RequestMapping(value="candidate/{candidateId}")
	public String tamilnaduCandidate(@PathVariable String candidateId, ModelMap model){
		model.addAttribute("candidate",candidateService.retrieveCandidateByID(candidateId, "TNCandidates"));
		return "tamilnadu/candidate";
	}
}
