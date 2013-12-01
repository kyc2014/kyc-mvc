package net.kyc.spring.web.controllers;

import java.util.ArrayList;
import java.util.List;

import net.kyc.spring.web.candidate.model.Candidate;
import net.kyc.spring.web.candidate.model.MinisterialCandidate;
import net.kyc.spring.web.candidate.service.CandidateService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class Sample {
	@Autowired
	private CandidateService candidateService;
	
	private static String allCandidateSQL = "select CandidateID,CandidateName,CandidateConstituency,CandidateParty from minister";
	@RequestMapping("/test")
	public String test(){
		return "test";
	}
	@RequestMapping(value="minister/{candidateName}")
	public String retrieveCandidate(@PathVariable String candidateName, ModelMap model){
		Candidate candidate = candidateService.retrieveCandidateByName(candidateName);
		model.addAttribute("candidate",candidate);
		return "CandidatePage";
	}
	
	@RequestMapping(value="ministers/list")
	public String retrieveMinisterList(ModelMap model){
		List<MinisterialCandidate> candidate = candidateService.retrieveMinistersList();
		model.addAttribute("candidate",candidate);
		return "minister/ministerpage";
	}
	
	@RequestMapping(value="/search.jsp",method=RequestMethod.POST)
    public List<Candidate> addUser(@RequestParam("searchString") String searchText, BindingResult result ){
		List<Candidate> list=new ArrayList<Candidate>();
		return list;
	}
	
	@RequestMapping(value="/parliament/all")
    public String addUser(){
		
		return "";
	}
	
	
        
}
