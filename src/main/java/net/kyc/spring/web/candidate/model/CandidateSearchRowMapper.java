package net.kyc.spring.web.candidate.model;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Calendar;

import org.springframework.jdbc.core.RowMapper;

public class CandidateSearchRowMapper implements RowMapper {

	@Override
	public Object mapRow(ResultSet rs, int arg1) throws SQLException {
		// TODO Auto-generated method stub
		Candidate candidate = new Candidate();
		candidate.setName(rs.getString("CandidateName"));
		candidate.setId(rs.getInt("CandidateID"));
		candidate.setCurrentPosition(rs.getString("CandidatePosition"));
		candidate.setParty(rs.getString("PartyName"));
		candidate.setPartyImage(rs.getString("PartyImage"));
		candidate.setDob(rs.getString("CandidateDOB"));
		candidate.setAge(String.valueOf(Calendar.getInstance().get(Calendar.YEAR)-Integer.parseInt((candidate.getDob().split("-"))[0])));
		candidate.setSupporters(rs.getInt("CandidateSupporters"));
		candidate.setCandidateImage(rs.getString("CandidateImage"));
		return candidate;
	}
	

}
