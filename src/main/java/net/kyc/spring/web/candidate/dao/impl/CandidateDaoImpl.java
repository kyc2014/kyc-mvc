package net.kyc.spring.web.candidate.dao.impl;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;

import net.kyc.spring.web.candidate.dao.CandidateDao;
import net.kyc.spring.web.candidate.model.CandidateRowMapper;

public class CandidateDaoImpl implements CandidateDao{

	private JdbcTemplate jdbcTemplate;
	
	public void setDataSource(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
		}

	
	@Override
	public Object retrieveCandidate(String name) {
			String sql = "select * from candidate where name = ?";
			Object candidateObject = jdbcTemplate.queryForObject(sql, new Object[] {name}, new CandidateRowMapper());
			return candidateObject;
	}

}
