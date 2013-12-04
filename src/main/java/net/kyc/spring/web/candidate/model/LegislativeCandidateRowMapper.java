package net.kyc.spring.web.candidate.model;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class LegislativeCandidateRowMapper implements RowMapper {

	@Override
	public Object mapRow(ResultSet rs, int rowNum) throws SQLException {
		// TODO Auto-generated method stub
		LegislativeCandidate candidate=new LegislativeCandidate();
		candidate.setName(rs.getString("candidate_name"));
		candidate.setId(rs.getInt("candidate_id"));
		candidate.setConstituencyName(rs.getString("constituency_name"));
		candidate.setDistrict(rs.getString("district"));
		candidate.setParty(rs.getString("party"));
		candidate.setDob(rs.getString("dob"));
		candidate.setPob(rs.getString("pob"));
		candidate.setEducation(rs.getString("education"));
		candidate.setMaritalStatus(rs.getString("marital_status"));
		candidate.setOccupation(rs.getString("occupation"));
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
		candidate.setPoliticalCarreer(rs.getString("political_carreer"));
		candidate.setImage(candidate.getName().toLowerCase().replaceAll("\\.","").replaceAll(" ",""));
		return candidate;
	}

}
