package net.kyc.spring.web.candidate.model;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class MinisterCandidateRowMapper implements RowMapper{
	@Override
	public Object mapRow(ResultSet rs, int rowNum) throws SQLException {
		MinisterialCandidate ministerCandidate = new MinisterialCandidate();
		ministerCandidate.setCandidateId(rs.getInt("candidate_id"));
		ministerCandidate.setName(rs.getString("candidate_name"));
		ministerCandidate.setShortName(rs.getString("candidate_short_name"));
		ministerCandidate.setGender(rs.getString("candidate_gender"));
		ministerCandidate.setConstituency(rs.getString("candidate_constituency"));
		ministerCandidate.setPartyName(rs.getString("party"));
		ministerCandidate.setDob(rs.getString("dob"));
		ministerCandidate.setEducation(rs.getString("education"));
		ministerCandidate.setAchievements(rs.getString("achievements"));
		ministerCandidate.setOccupation(rs.getString("occupation"));
		ministerCandidate.setAgenda(rs.getString("agenda"));
		ministerCandidate.setSupporters(rs.getString("supporters"));
		ministerCandidate.setPreviousPositions(rs.getString("previous_positions"));
		ministerCandidate.setCandidateNative(rs.getString("candidate_native"));
		ministerCandidate.setAddress(rs.getString("address"));
		ministerCandidate.setContact(rs.getString("contact"));
		ministerCandidate.setDelhiAddress(rs.getString("delhi_address"));
		ministerCandidate.setDelhiContact(rs.getString("delhi_contact"));
		ministerCandidate.setPosition(rs.getString("position"));
		ministerCandidate.setCompeting(rs.getString("competing"));
		ministerCandidate.setPartyShortName(rs.getString("party_short_name"));
		return ministerCandidate;
	}
}
