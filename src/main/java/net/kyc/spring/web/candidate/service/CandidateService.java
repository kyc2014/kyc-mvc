package net.kyc.spring.web.candidate.service;

import net.kyc.spring.web.candidate.model.Candidate;

public interface CandidateService {
	public Candidate retrieveCandidateByName(String name);
}
