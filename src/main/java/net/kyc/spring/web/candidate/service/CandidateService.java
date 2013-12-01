package net.kyc.spring.web.candidate.service;

import java.util.List;

import net.kyc.spring.web.candidate.model.Candidate;
import net.kyc.spring.web.candidate.model.MinisterialCandidate;

public interface CandidateService {
	public Candidate retrieveCandidateByName(String name);
	public Candidate retrieveCandidateByID(int id, String tableName);
	public List<Candidate> retrieveCandidateList();
	public Object retrieveStateCandidateList(String stateName);
	public List<MinisterialCandidate> retrieveMinistersList();
}
