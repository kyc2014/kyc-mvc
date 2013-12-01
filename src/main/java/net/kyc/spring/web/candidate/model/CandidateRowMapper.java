package net.kyc.spring.web.candidate.model;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Calendar;

import net.kyc.spring.web.party.model.Party;

import org.springframework.jdbc.core.RowMapper;



public class CandidateRowMapper implements RowMapper{

	@Override
	public Object mapRow(ResultSet rs, int rowNum) throws SQLException {
		Candidate candidate = new Candidate();
		Party party=new Party();
		candidate.setCandidateName(rs.getString("CandidateName"));
		candidate.setCandidateID(rs.getInt("CandidateID"));
		candidate.setCandidateAgenda(rs.getString("CandidateAgenda"));
		candidate.setCandidateEducation(rs.getString("CandidateEducationalQualification"));
		candidate.setCandidateParty(rs.getInt("CandidateParty"));
		candidate.setCandidateDOB(rs.getString("CandidateDOB"));
		candidate.setCandidateAge(Calendar.getInstance().get(Calendar.YEAR)-Integer.parseInt((candidate.getCandidateDOB().split("-"))[0]));
		candidate.setCandidateSupporters(rs.getInt("CandidateSupporters"));
		candidate.setCandidateGender(rs.getString("CandidateGender"));
		candidate.setCandidateShortName(rs.getString("CandidateShortName"));
		candidate.setCandidateImage(rs.getString("CandidateImage"));
		candidate.setCandidateCurrentPosition(rs.getString("CandidatePosition"));
		candidate.setCandidateCompetingFor(rs.getString("CandidateCompetingFor"));
		candidate.setCandidatePreviousPositions(rs.getString("CandidatePreviousPositions"));
		party.setPartyName(rs.getString("Party.PartyName"));
		party.setPartyImage(rs.getString("Party.PartyImage"));
		candidate.setParty(party);
		return candidate;
	}

}
