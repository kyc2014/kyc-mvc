package net.kyc.spring.web.candidate.model;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Calendar;
import java.util.Date;

import org.springframework.jdbc.core.RowMapper;

public class MinisterCandidateRowMapper implements RowMapper{
	@Override
	public Object mapRow(ResultSet rs, int rowNum) throws SQLException {
		String dob=rs.getString("dob");
		MinisterialCandidate ministerCandidate = new MinisterialCandidate();
		ministerCandidate.setCandidateId(rs.getInt("candidate_id"));
		ministerCandidate.setName(rs.getString("candidate_name"));
		ministerCandidate.setShortName(rs.getString("candidate_short_name"));
		ministerCandidate.setGender(rs.getString("candidate_gender"));
		ministerCandidate.setConstituency(rs.getString("candidate_constituency"));
		ministerCandidate.setPartyName(rs.getString("party"));
		ministerCandidate.setDob(dob);
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
		int age=Calendar.getInstance().get(Calendar.YEAR)-Integer.parseInt(dob.split("-")[0]);
		if(Integer.parseInt(dob.split("-")[1])>Calendar.getInstance().get(Calendar.MONTH) || (Integer.parseInt(dob.split("-")[1])==Calendar.getInstance().get(Calendar.MONTH)&&Integer.parseInt(dob.split("-")[2])>=Calendar.getInstance().get(Calendar.DATE)))
			age+=1;
		ministerCandidate.setAge(""+age);
		ministerCandidate.setConstituencyCode(rs.getString("candidate_constituency_code"));
		return ministerCandidate;
	}
}
