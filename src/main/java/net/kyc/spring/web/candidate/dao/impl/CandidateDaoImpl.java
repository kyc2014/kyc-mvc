package net.knowyourcandidate.spring.web.candidate.dao.impl;

import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;

import net.knowyourcandidate.spring.web.candidate.dao.CandidateDao;
import net.knowyourcandidate.spring.web.candidate.model.CandidateRowMapper;
import net.knowyourcandidate.spring.web.candidate.model.CandidateSearchRowMapper;

public class CandidateDaoImpl implements CandidateDao{

	private JdbcTemplate jdbcTemplate;
	
	public void setDataSource(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
		}

	
	@Override
	public Object retrieveCandidate(String name) {
			String sql = "select *,Party.PartyID,Party.PartyImage,Party.PartyName from Candidate inner join Party on Candidate.CandidateParty=Party.PartyID  where Candidate.CandidateName = ?";
			Object candidateObject = jdbcTemplate.queryForObject(sql, new Object[] {name}, new CandidateRowMapper());
			return candidateObject;
	}


	@Override
	public Object retrieveCandidateForSearch(String name) {
		// TODO Auto-generated method stub
		List<Object> candidate=new ArrayList<Object>();
		String sql="SELECT CandidateID,CandidateName,CandidateDOB,CandidateParty,CandidateImage,CandidateSupporters,CandidatePosition,Party.PartyName,Party.PartyImage from Candidate INNER JOIN Party ON Candidate.CandidateParty=Party.PartyID WHERE Candidate.CandidateName like '%?%' ORDER BY Party.PartyID;";
		Object candidateObject = jdbcTemplate.queryForList(sql, new Object[] {name}, new CandidateSearchRowMapper());
		return candidateObject;
	}

}
