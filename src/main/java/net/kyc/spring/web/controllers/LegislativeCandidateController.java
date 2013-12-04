package net.kyc.spring.web.controllers;

import net.kyc.spring.web.candidate.model.LegislativeCandidate;
import net.kyc.spring.web.candidate.service.CandidateService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
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
	LegislativeCandidate candidate;
	try
	{
	candidate=candidateService.retrieveLegislativeCandidateByID(candidateId, stateName);
	}
	catch(EmptyResultDataAccessException e)
	{
		return "CandidateMissing";
	}
	model.addAttribute("candidate",candidate);
	return "tamilnadu/candidate";
	}
	@RequestMapping(value="list/{stateName}/mla")
	public String tamilnaduCandidate(@PathVariable String stateName, ModelMap model){
		model.addAttribute("candidate",candidateService.retrieveStateCandidateList(stateName));
		return stateName+"/candidatelist";
	}
	
	
}
