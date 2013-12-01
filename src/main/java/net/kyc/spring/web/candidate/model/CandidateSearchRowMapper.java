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
		candidate.setDob(rs.getString("CandidateDOB"));
		candidate.setConstituencyName(rs.getString("constituencyName"));
		//candidate.set(rs.getString("2,image"));
		candidate.setConstituencyNumber(rs.getString("constituencyNumber"));
		
		candidate.setDistrict(rs.getString("district"));
		candidate.setParty(rs.getString("party"));
		candidate.setDob(rs.getString("dob"));
		candidate.setPob(rs.getString("pob"));
		candidate.setEducation(rs.getString("education"));
		candidate.setMaritalStatus(rs.getString("marital_status"));
		candidate.setOccupation(rs.getString("occupation"));
		
		candidate.setPoliticalCarreer(rs.getString("political_carreer"));
		candidate.setSocial(rs.getString("social"));
		candidate.setChennaiAddress(rs.getString("chennai_address"));
		candidate.setMofussilAddress(rs.getString("mofussil_address"));
		candidate.setChennaiResidenceNumber(rs.getString("chennai_residence_number"));
		candidate.setChennaiOfficeNumber(rs.getString("chennai_office_number"));
		candidate.setMofussilResidenceNumber(rs.getString("mofussil_residence_number"));
		candidate.setMofussilOfficeNumber(rs.getString("mofussil_office_number"));
		candidate.setMobile(rs.getString("mobile"));
		candidate.setEmail(rs.getString("email"));
		candidate.setSupporters(rs.getInt("supporters"));

		return candidate;
	}
	

}
