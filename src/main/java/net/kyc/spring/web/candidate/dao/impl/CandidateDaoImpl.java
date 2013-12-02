package net.kyc.spring.web.candidate.dao.impl;

import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;

import net.kyc.spring.web.candidate.dao.CandidateDao;
import net.kyc.spring.web.candidate.model.Candidate;
import net.kyc.spring.web.candidate.model.CandidateAbstractRowMapper;
import net.kyc.spring.web.candidate.model.CandidateRowMapper;
import net.kyc.spring.web.candidate.model.CandidateSearchRowMapper;
import net.kyc.spring.web.candidate.model.LegislativeCandidateRowMapper;
import net.kyc.spring.web.candidate.model.MinisterCandidateRowMapper;
import net.kyc.spring.web.candidate.model.MinisterialCandidate;

public class CandidateDaoImpl implements CandidateDao{

	private JdbcTemplate jdbcTemplate;
	public static String candidateListSQL = "SELECT candidate_id,candidate_name,constituency_name,district,party from ";
	public static String ministerCandidate = "SELECT * from minister";
	
	public void setDataSource(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
		}

	
	@Override
	public Object retrieveMinister(String name) {
			String sql = "select * from minister where minister.candidate_name = ?";
			Object candidateObject = jdbcTemplate.queryForObject(sql, new Object[] {name}, new MinisterCandidateRowMapper());
			return candidateObject;
	}
	
	@Override
	public Object retrieveMLA(String name)
	{
		String sql = "select * from TNConstituency where tamilnadu.candidate_name = ?";
		Object candidateObject = jdbcTemplate.queryForObject(sql, new Object[] {name}, new CandidateRowMapper());
		return candidateObject;
	}
	
	@Override
	public Object retrieveMLA(int id,String state)
	{
		String sql = "select * from tamilnadu where tamilnadu.constituency_number = ?";
		Object candidateObject = jdbcTemplate.queryForObject(sql, new Object[] {id}, new LegislativeCandidateRowMapper());
		return candidateObject;
	}

	@Override
	public Object retrieveCandidateUsingID(int id, String table) {
		// TODO Auto-generated method stub
		String sql="SELECT * from "+table+" where candidate_id=?";
		Object[] obj = new Object[]{id};
		Object candidateObject = jdbcTemplate.queryForObject(sql, obj,new CandidateRowMapper());
		System.out.println("Test "+candidateObject);
		return candidateObject;
	}


	@Override
	public List retrieveCandidateAbstractList() {
		// TODO Auto-generated method stub
		List candidateList = new ArrayList(); 
		String sql="SELECT candidate_id,candidate_name,constituency_name,district,party from TNCandidates";
		candidateList = jdbcTemplate.queryForList(sql, new CandidateAbstractRowMapper());
		System.out.println(candidateList.size());
		return candidateList;
	}


	@Override
	public List<Candidate> retrieveStateCandidateList(String stateName) {
		List<Candidate> candidateList = new ArrayList(); 
		candidateList = jdbcTemplate.query(candidateListSQL+stateName, new CandidateAbstractRowMapper());
		System.out.println(candidateList.size());
		return candidateList;
	}


	@Override
	public List<MinisterialCandidate> retrieveMinisterList() {
		List<Candidate> candidateList = new ArrayList(); 
		candidateList = jdbcTemplate.query(ministerCandidate, new MinisterCandidateRowMapper());
		return null;
	}
}
