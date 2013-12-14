package net.kyc.spring.web.candidate.model;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class CandidateAbstractRowMapper implements RowMapper {
	@Override
	public Object mapRow(ResultSet rs, int rowNum) throws SQLException {
		LegislativeCandidate candidate = new LegislativeCandidate();
		candidate.setName(rs.getString("candidate_name"));
		candidate.setId(rs.getInt("candidate_id"));
		candidate.setConstituencyName(rs.getString("constituency_name"));
		//candidate.set(rs.getString("2,image"));
		candidate.setDistrict(rs.getString("party"));
		return candidate;
	}
}
