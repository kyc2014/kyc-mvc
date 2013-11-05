package net.kyc.spring.web.candidate.service.impl;

import net.kyc.spring.web.candidate.dao.CandidateDao;
import net.kyc.spring.web.candidate.model.Candidate;
import net.kyc.spring.web.candidate.service.CandidateService;

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
