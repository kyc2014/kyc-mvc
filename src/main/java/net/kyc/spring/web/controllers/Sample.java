package net.kyc.spring.web.controllers;


import java.util.ArrayList;
import java.util.List;

import net.kyc.spring.web.candidate.model.Candidate;
import net.kyc.spring.web.candidate.model.MinisterialCandidate;
import net.kyc.spring.web.candidate.service.CandidateService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
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
	@RequestMapping(value="minister/{candidateName}")
	public String retrieveCandidate(@PathVariable String candidateName, ModelMap model){
		MinisterialCandidate candidate;
		try
		{
		candidate = candidateService.retrieveMinisterialCandidateByName(candidateName);
		}
		catch(EmptyResultDataAccessException e)
		{
			return "CandidateMissing";
		}
		model.addAttribute("candidate",candidate);
		return "CandidatePage";
	}
	
	// For Candidate dialog
	@RequestMapping(value="minister/q/{candidateName}")
	public String retrieveCandidatePlain(@PathVariable String candidateName, ModelMap model){
		MinisterialCandidate candidate;
		try
		{
		candidate = candidateService.retrieveMinisterialCandidateByName(candidateName);
		}
		catch(EmptyResultDataAccessException e)
		{
			return "CandidateMissing";
		}
		model.addAttribute("candidate",candidate);
		return "CandidateDialog";
	}
	
	// For serach
	@RequestMapping(value="minister/search/{search}")
	public String retrieveCandidateSearch(@PathVariable String candidateName, ModelMap model){
		List<MinisterialCandidate> candidate;
		try
		{
			candidate = candidateService.retrieveMinisterialCandidatesBySearch(candidateName);
		}
		catch(EmptyResultDataAccessException e)
		{
			return "CandidateMissing";
		}
		model.addAttribute("candidate",candidate);
		return "CandidateDialog";
	}
	
	
	@RequestMapping(value="ministers/list/{pageNo}")
	public String retrieveMinisterList(@PathVariable int pageNo, ModelMap model){
		List<MinisterialCandidate> candidate = candidateService.retrieveMinistersList(pageNo);
		model.addAttribute("candidate",candidate);
		return "ministerpage";
	}
	
	@RequestMapping(value="editor")
	public String displayEditorsPage(){
		return "editorLogin";
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
