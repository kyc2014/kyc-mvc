package net.kyc.spring.web.candidate.service.impl;

import java.util.List;

import net.kyc.spring.web.candidate.dao.CandidateDao;
import net.kyc.spring.web.candidate.model.Candidate;
import net.kyc.spring.web.candidate.model.LegislativeCandidate;
import net.kyc.spring.web.candidate.model.MinisterialCandidate;
import net.kyc.spring.web.candidate.service.CandidateService;

public class CandidateServiceImpl implements CandidateService{

	private CandidateDao candidateDao;
	
	public void setCandidateDao(CandidateDao candidateDao){
		this.candidateDao = candidateDao;
	}
	@Override
	public MinisterialCandidate retrieveMinisterialCandidateByName(String name) {
		MinisterialCandidate candidate = (MinisterialCandidate)candidateDao.retrieveMinister(name);
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
	public List<LegislativeCandidate> retrieveStateCandidateList(String stateName,int pageNo) {
		List<LegislativeCandidate> list = candidateDao.retrieveStateCandidateList(stateName,pageNo);
		return list;
	}
	@Override
	public List<MinisterialCandidate> retrieveMinistersList(int pageNo) {
		List<MinisterialCandidate> list = candidateDao.retrieveMinisterList(pageNo);
		return list;		
	}
	@Override
	public LegislativeCandidate retrieveLegislativeCandidateByName(String name) {
		// TODO Auto-generated method stub
		LegislativeCandidate candidate=(LegislativeCandidate)candidateDao.retrieveMLA(name);
		return candidate;
	}
	public LegislativeCandidate retrieveLegislativeCandidateByID(int id,String state) {
		// TODO Auto-generated method stub
		LegislativeCandidate candidate=(LegislativeCandidate)candidateDao.retrieveMLA(id,state);
		return candidate;
	}
}
