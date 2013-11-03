package net.knowyourcandidate.spring.web.controllers;

import java.util.ArrayList;
import java.util.List;

import net.knowyourcandidate.spring.web.candidate.model.Candidate;
import net.knowyourcandidate.spring.web.candidate.service.CandidateService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class Sample {
	@Autowired
	private CandidateService candidateService;
	@RequestMapping("/test")
	public String test(){
		return "test";
	}
	@RequestMapping(value="{candidateName}")
	public String retrieveCandidate(@PathVariable String candidateName, ModelMap model){
		Candidate candidate = candidateService.retrieveCandidateByName(candidateName);
		model.addAttribute("candidate",candidate);
		return "CandidatePage";
	}
	@RequestMapping(value="/search.jsp",method=RequestMethod.POST)
    public List<Candidate> addUser(@RequestParam("searchString") String searchText, BindingResult result ){
		List<Candidate> list=new ArrayList<Candidate>();
		return list;
	}
        
}
