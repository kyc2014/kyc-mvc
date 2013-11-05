package net.kyc.spring.web.candidate.model;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Calendar;

import org.springframework.jdbc.core.RowMapper;



public class CandidateRowMapper implements RowMapper{

	@Override
	public Object mapRow(ResultSet rs, int rowNum) throws SQLException {
		Candidate candidate = new Candidate();
		candidate.setName(rs.getString("CandidateName"));
		candidate.setId(rs.getInt("CandidateID"));
		candidate.setAgenda(rs.getString("CandidateAgenda"));
		candidate.setEducation(rs.getString("CandidateEducationalQualification"));
		candidate.setParty(rs.getString("CandidateParty"));
		candidate.setPartyName(rs.getString("Party.PartyName"));
		candidate.setPartyImage(rs.getString("Party.PartyImage"));
		candidate.setDob(rs.getString("CandidateDOB"));
		candidate.setAge(String.valueOf(Calendar.getInstance().get(Calendar.YEAR)-Integer.parseInt((candidate.getDob().split("-"))[0])));
		candidate.setSupporters(rs.getInt("CandidateSupporters"));
		candidate.setGender(rs.getString("CandidateGender"));
		candidate.setShortname(rs.getString("CandidateShortName"));
		candidate.setCandidateImage(rs.getString("CandidateImage"));
		candidate.setCurrentPosition(rs.getString("CandidatePosition"));
		candidate.setPositions(rs.getString("CandidatePreviousPositions"));
		return candidate;
	}

}
