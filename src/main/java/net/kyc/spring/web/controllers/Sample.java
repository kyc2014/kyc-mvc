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
	
	@RequestMapping(value="ministers/list/{pageNo}")
	public String retrieveMinisterList(@PathVariable int pageNo, ModelMap model){
		List<MinisterialCandidate> candidate = candidateService.retrieveMinistersList(pageNo);
		model.addAttribute("candidate",candidate);
		model.addAttribute("pageNo", pageNo);
		return "minister/paginated_minister_page";
	}
	
	@RequestMapping(value="ministers/search", method = RequestMethod.GET)
	public String retrieveMinisterSearch(@RequestParam(value="keyword", required=true) String keyword, ModelMap model){
		List<MinisterialCandidate> candidate = candidateService.searchMinisters(keyword);
		model.addAttribute("candidate",candidate);
		return "minister/paginated_minister_search_page";
	}
	
	/*@RequestMapping(value="/eci/election-schedule")
	public String displayElectionSchedulePage()
	{
		return "eci/election-schedule";
	}*/
	
	@RequestMapping(value="editor")
	public String displayEditorsPage(){
		return "editorLogin";
	}
	
	@RequestMapping(value="/parliament/all")
    public String addUser(){
		
		return "";
	}
	
	@RequestMapping(value="/contact")
    public String contact(){
		return "contact";
	}
	
	@RequestMapping(value="/about")
    public String about(){
		return "about";
	}
	
        
}
