package net.kyc.spring.web.candidate.model;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Calendar;

import net.kyc.spring.web.party.model.Party;

import org.springframework.jdbc.core.RowMapper;

public class CandidateSearchRowMapper implements RowMapper {

	@Override
	public Object mapRow(ResultSet rs, int arg1) throws SQLException {
		// TODO Auto-generated method stub
		Candidate candidate = new Candidate();
		Party party=new Party();
		candidate.setCandidateName(rs.getString("CandidateName"));
		candidate.setCandidateID(rs.getInt("CandidateID"));
		candidate.setCandidateCurrentPosition(rs.getString("CandidatePosition"));
		candidate.setCandidateDOB(rs.getString("CandidateDOB"));
		candidate.setCandidateAge(Calendar.getInstance().get(Calendar.YEAR)-Integer.parseInt((candidate.getCandidateDOB().split("-"))[0]));
		candidate.setCandidateSupporters(rs.getInt("CandidateSupporters"));
		candidate.setCandidateImage(rs.getString("CandidateImage"));
		party.setPartyName(rs.getString("PartyName"));
		party.setPartyImage(rs.getString("PartyImage"));
		candidate.setParty(party);
		return candidate;
	}
	

}
