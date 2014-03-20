package net.kyc.spring.web.feedback.dao;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;

import net.kyc.spring.web.feedback.model.Feedback;

import java.util.Date;
import java.sql.Timestamp;


public class FeedbackDAOImpl implements FeedbackDAO{
	
	private JdbcTemplate jdbcTemplate;
	private String insertSQL = "insert into feedback (name,email,age,gender,feedback) VALUES (?,?,?,?,?)";
	private String insertSubscribe = "insert into subscribe (email,entrytime) VALUES (?, ?)";
	private String insertSurvey= "insert into survey (manifesto,freebies,entrytime) VALUES (?, ?, ?)";
	private static Date date = new Date(); 
	public void setDataSource(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
		}

	@Override
	public void savefeedback(Feedback feedback) {
		Object params [] = new Object[] {feedback.getName(),feedback.getEmail(),feedback.getAge(),feedback.getGender(),feedback.getFeedback()};
		jdbcTemplate.update(insertSQL,params);
	}

	@Override
	public boolean subscribe(String email) {
		Timestamp ts =  new Timestamp(date.getTime());
		Object params[] = new Object[] {email, ts.getTime()};
		try{
			jdbcTemplate.update(insertSubscribe,params);
			return true;
		}
		catch(Exception e){
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public boolean saveSurvey(String manifesto, boolean freebies) {
		try{
		Timestamp ts =  new Timestamp(date.getTime());
		Object params [] = new Object[] {manifesto , freebies, ts.getTime()};
		jdbcTemplate.update(insertSurvey,params);
		return true;
		}
		catch(Exception e){
			e.printStackTrace();
			return false;
		}
	}
	
}
