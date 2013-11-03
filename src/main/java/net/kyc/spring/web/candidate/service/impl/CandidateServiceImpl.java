package net.knowyourcandidate.spring.web.candidate.service.impl;

import net.knowyourcandidate.spring.web.candidate.dao.CandidateDao;
import net.knowyourcandidate.spring.web.candidate.model.Candidate;
import net.knowyourcandidate.spring.web.candidate.service.CandidateService;

public class CandidateServiceImpl implements CandidateService{

	private CandidateDao candidateDao;
	
	public void setCandidateDao(CandidateDao candidateDao){
		this.candidateDao = candidateDao;
	}
	@Override
	public Candidate retrieveCandidateByName(String name) {
		Candidate candidate = (Candidate)candidateDao.retrieveCandidate(name);
		return candidate;
	}
	
}
