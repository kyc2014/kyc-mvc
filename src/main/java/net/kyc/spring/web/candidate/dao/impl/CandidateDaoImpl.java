package net.kyc.spring.web.candidate.dao.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.sql.DataSource;

import net.kyc.spring.web.candidate.dao.CandidateDao;
import net.kyc.spring.web.candidate.model.CandidateAbstractRowMapper;
import net.kyc.spring.web.candidate.model.CandidateRowMapper;
import net.kyc.spring.web.candidate.model.LegislativeCandidate;
import net.kyc.spring.web.candidate.model.LegislativeCandidateRowMapper;
import net.kyc.spring.web.candidate.model.MinisterCandidateRowMapper;
import net.kyc.spring.web.candidate.model.MinisterialCandidate;

import org.springframework.jdbc.core.JdbcTemplate;



public class CandidateDaoImpl implements CandidateDao{

	private JdbcTemplate jdbcTemplate;
	public static String candidateListSQL = "SELECT candidate_id,candidate_name,constituency_name,district,party from ";
	public static String ministerCandidate = "SELECT candidate_name,candidate_constituency,party,party_short_name,supporters from minister where candidate_id > ? order by candidate_id limit 15";
	public static String ministerSearchSQL = "select * from minister where minister.candidate_name like ? or minister.candidate_constituency like ? limit ?";
	
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
	public List<MinisterialCandidate> searchMinister(String keyword) {
			List<MinisterialCandidate> candidateList = new ArrayList<MinisterialCandidate>(); 
			String formKeyword = "%"+keyword +"%";
			List<Map<String,Object>> rows = jdbcTemplate.queryForList(ministerSearchSQL,new Object[] {formKeyword, formKeyword, 30});
			for (Map row : rows) {
				MinisterialCandidate candidate=new MinisterialCandidate();
				candidate.setName((String)row.get("candidate_name"));
				candidate.setPartyShortName((String)row.get("party_short_name"));
				candidate.setConstituency((String)row.get("candidate_constituency"));
				candidate.setPartyName((String)row.get("party"));
				candidate.setSupporters((String)row.get("supporters"));
				candidateList.add(candidate);
			}
			return candidateList;
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
	public List<LegislativeCandidate> retrieveStateCandidateList(String stateName,int pageNo) {
		List<LegislativeCandidate> candidateList = new ArrayList(); 
		candidateList = jdbcTemplate.query(candidateListSQL+stateName+" where candidate_id > "+(pageNo-1)*15+" order by candidate_id", new CandidateAbstractRowMapper());
		return candidateList;
	}


	@Override
	public List<MinisterialCandidate> retrieveMinisterList(int pageNo) {
		List<MinisterialCandidate> candidateList = new ArrayList<MinisterialCandidate>(); 
		List<Map<String,Object>> rows = jdbcTemplate.queryForList(ministerCandidate,new Object[]{(pageNo-1)*15});
		for (Map row : rows) {
			MinisterialCandidate candidate=new MinisterialCandidate();
			candidate.setName((String)row.get("candidate_name"));
			candidate.setPartyShortName((String)row.get("party_short_name"));
			candidate.setConstituency((String)row.get("candidate_constituency"));
			candidate.setPartyName((String)row.get("party"));
			candidate.setSupporters((String)row.get("supporters"));
			candidateList.add(candidate);
		}
		return candidateList;
	}
}
