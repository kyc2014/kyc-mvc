package net.kyc.spring.web.candidate.model;

import net.kyc.spring.web.party.model.Party;

public class Candidate {
	private int candidateID,candidateSupporters,candidateParty,candidateAge;
	private String candidateName,candidateShortName,candidateGender,candidateDOB,candidateEducation;
	private String candidateAgenda,candidateImage,candidatePreviousPositions,candidateCurrentPosition;
	private String candidateAchievements,candidateCompetingFor,candidateConstituency;
	private Party party;
	public int getCandidateID() {
		return candidateID;
	}
	public void setCandidateID(int candidateID) {
		this.candidateID = candidateID;
	}
	public int getCandidateSupporters() {
		return candidateSupporters;
	}
	public void setCandidateSupporters(int candidateSupporters) {
		this.candidateSupporters = candidateSupporters;
	}
	public int getCandidateParty() {
		return candidateParty;
	}
	public void setCandidateParty(int candidateParty) {
		this.candidateParty = candidateParty;
	}
	public int getCandidateAge() {
		return candidateAge;
	}
	public void setCandidateAge(int candidateAge) {
		this.candidateAge = candidateAge;
	}
	public String getCandidateName() {
		return candidateName;
	}
	public void setCandidateName(String candidateName) {
		this.candidateName = candidateName;
	}
	public String getCandidateShortName() {
		return candidateShortName;
	}
	public void setCandidateShortName(String candidateShortName) {
		this.candidateShortName = candidateShortName;
	}
	public String getCandidateGender() {
		return candidateGender;
	}
	public void setCandidateGender(String candidateGender) {
		this.candidateGender = candidateGender;
	}
	public String getCandidateDOB() {
		return candidateDOB;
	}
	public void setCandidateDOB(String candidateDOB) {
		this.candidateDOB = candidateDOB;
	}
	public String getCandidateEducation() {
		return candidateEducation;
	}
	public void setCandidateEducation(String candidateEducation) {
		this.candidateEducation = candidateEducation;
	}
	public String getCandidateAgenda() {
		return candidateAgenda;
	}
	public void setCandidateAgenda(String candidateAgenda) {
		this.candidateAgenda = candidateAgenda;
	}
	public String getCandidateImage() {
		return candidateImage;
	}
	public void setCandidateImage(String candidateImage) {
		this.candidateImage = candidateImage;
	}
	public String getCandidatePreviousPositions() {
		return candidatePreviousPositions;
	}
	public void setCandidatePreviousPositions(String candidatePreviousPositions) {
		this.candidatePreviousPositions = candidatePreviousPositions;
	}
	public String getCandidateCurrentPosition() {
		return candidateCurrentPosition;
	}
	public void setCandidateCurrentPosition(String candidateCurrentPosition) {
		this.candidateCurrentPosition = candidateCurrentPosition;
	}
	public String getCandidateAchievements() {
		return candidateAchievements;
	}
	public void setCandidateAchievements(String candidateAchievements) {
		this.candidateAchievements = candidateAchievements;
	}
	public Party getParty() {
		return party;
	}
	public void setParty(Party party) {
		this.party = party;
	}
	public String getCandidateCompetingFor() {
		return candidateCompetingFor;
	}
	public void setCandidateCompetingFor(String candidateCompetingFor) {
		this.candidateCompetingFor = candidateCompetingFor;
	}
	
	
}
