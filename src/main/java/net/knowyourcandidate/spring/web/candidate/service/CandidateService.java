package net.knowyourcandidate.spring.web.candidate.service;

import net.knowyourcandidate.spring.web.candidate.model.Candidate;

public interface CandidateService {
	public Candidate retrieveCandidateByName(String name);
}
