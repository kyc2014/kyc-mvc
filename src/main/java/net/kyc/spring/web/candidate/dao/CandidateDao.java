package net.kyc.spring.web.candidate.dao;

import java.util.List;

import net.kyc.spring.web.candidate.model.Candidate;
import net.kyc.spring.web.candidate.model.LegislativeCandidate;
import net.kyc.spring.web.candidate.model.MinisterialCandidate;

public interface CandidateDao {
	public Object retrieveMinister(String name);
	public Object retrieveMLA(String name);
	public Object retrieveMLA(int id,String state);
	public Object retrieveCandidateUsingID(int id, String tableName);
	public List<Object> retrieveCandidateAbstractList();
	public List<LegislativeCandidate> retrieveStateCandidateList(String stateName,int pageNo);
	public List<MinisterialCandidate> retrieveMinisterList(int pageNo);
	
}
