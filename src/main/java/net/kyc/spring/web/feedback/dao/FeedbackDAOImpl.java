package net.kyc.spring.web.feedback.dao;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;

import net.kyc.spring.web.feedback.model.Feedback;

public class FeedbackDAOImpl implements FeedbackDAO{
	
	private JdbcTemplate jdbcTemplate;
	private String insertSQL = "insert into feedback (name,email,age,gender,feedback) VALUES (?,?,?,?,?)";
	public void setDataSource(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
		}

	@Override
	public void savefeedback(Feedback feedback) {
		Object params [] = new Object[] {feedback.getName(),feedback.getEmail(),feedback.getAge(),feedback.getGender(),feedback.getFeedback()};
		jdbcTemplate.update(insertSQL,params);
	}
	
}
