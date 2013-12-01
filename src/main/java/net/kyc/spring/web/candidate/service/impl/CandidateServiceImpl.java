package net.kyc.spring.web.candidate.service.impl;

import java.util.List;

import net.kyc.spring.web.candidate.dao.CandidateDao;
import net.kyc.spring.web.candidate.model.Candidate;
import net.kyc.spring.web.candidate.model.MinisterialCandidate;
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
	@Override
	public Candidate retrieveCandidateByID(int id, String table) {
		Candidate candidate = (Candidate)candidateDao.retrieveCandidateUsingID(id,table);
		return candidate;
	}
	@Override
	public List<Candidate> retrieveCandidateList() {
		List candidate = candidateDao.retrieveCandidateAbstractList();
		return candidate;
	}
	@Override
	public List<Candidate> retrieveStateCandidateList(String stateName) {
		List<Candidate> list = candidateDao.retrieveStateCandidateList(stateName);
		return list;
	}
	@Override
	public List<MinisterialCandidate> retrieveMinistersList() {
		List<MinisterialCandidate> list = candidateDao.retrieveMinisterList();
		return list;		
	}
	
	
	
}
