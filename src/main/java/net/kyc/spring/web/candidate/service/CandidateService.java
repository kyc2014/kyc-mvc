package net.kyc.spring.web.candidate.service;

import java.util.List;

import net.kyc.spring.web.candidate.model.Candidate;
import net.kyc.spring.web.candidate.model.MinisterialCandidate;
import net.kyc.spring.web.candidate.model.LegislativeCandidate;

public interface CandidateService {
	public MinisterialCandidate retrieveMinisterialCandidateByName(String name);
	public LegislativeCandidate retrieveLegislativeCandidateByName(String name);
	public LegislativeCandidate retrieveLegislativeCandidateByID(int id,String state);
	public Candidate retrieveCandidateByID(int id, String tableName);
	public List<Candidate> retrieveCandidateList();
	public List<LegislativeCandidate> retrieveStateCandidateList(String stateName,int pageNo);
	public List<MinisterialCandidate> retrieveMinistersList(int pageNo);
}
