package net.kyc.spring.web.controllers;

import net.kyc.spring.web.candidate.service.CandidateService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.context.request.WebRequest;

@Controller
public class LegislativeCandidateController {
	@Autowired
	private CandidateService candidateService;
	@RequestMapping(value="{stateName}/mla/{candidateId}")
	public String tamilnaduCandidate(@PathVariable int candidateId, @PathVariable String stateName, ModelMap model, WebRequest request){
		model.addAttribute("candidate",candidateService.retrieveCandidateByID(candidateId, stateName));
		return "tamilnadu/candidate";
	}
	@RequestMapping(value="list/{stateName}/mla")
	public String tamilnaduCandidate(@PathVariable String stateName, ModelMap model){
		model.addAttribute("candidate",candidateService.retrieveStateCandidateList(stateName));
		return stateName+"/candidatelist";
	}
	
	
}
