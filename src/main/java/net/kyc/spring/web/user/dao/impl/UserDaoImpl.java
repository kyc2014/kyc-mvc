package net.kyc.spring.web.user.dao.impl;

import javax.sql.DataSource;
import org.springframework.jdbc.core.JdbcTemplate;


import net.kyc.spring.web.user.model.UserRowMapper;
import net.kyc.spring.web.user.dao.UserDao;
import net.kyc.spring.web.user.model.User;

public class UserDaoImpl implements UserDao{

	private JdbcTemplate jdbcTemplate;
	
	public void setDataSource(DataSource dataSource) {
		this.jdbcTemplate = new JdbcTemplate(dataSource);
		}
	
	public String addUser(User userDetails) {
		// TODO Auto-generated method stub
		String msg = "";
		//Object[] params = new Object[] { userDetails.getUserName(), userDetails.getName(), userDetails.getEmail(), userDetails.getPassword(), userDetails.getPoints(), userDetails.getConstituencyCode()};
		String sql = "insert into User (UserName,FirstName)values(\""+userDetails.getUserName()+"\",\""+userDetails.getName()+"\")";
		int count  = jdbcTemplate.update(sql);
		if (count==1)
		{
			msg = "Registration Successful";
		}
		else
		{
			msg = "Registration Unsuccessful";
		}
		return msg;
	}
	
	public User fetchUserDetials(int userId) {
		// TODO Auto-generated method stub
		String sql = "select * from user where username ='"+userId+"'";
		//Object[] params = new Object[] { userId };
		User userDetails = (User)jdbcTemplate.queryForObject(sql, new Object[]{userId}, new UserRowMapper());
		return userDetails;
	}
	
	public String updateUser(User userDetails) {
		// TODO Auto-generated method stub
		String msg = "";
		//Object[] params = new Object[] { userDetails.getName(), userDetails.getEmail(), userDetails.getPassword(), userDetails.getConstituencyCode()};
		String sql = "update user set Name = '"+userDetails.getName()+"', Email = '"+userDetails.getEmail()+"', Password = '"+userDetails.getPassword()+"' ,ConstituencyCode = '"+userDetails.getConstituencyCode()+"' where UserID = '"+userDetails.getUserId()+"'";
		int count  = jdbcTemplate.update(sql);
		if (count==1)
		{
			msg = "Update Successful";
		}
		else
		{
			msg = "Update Unsuccessful";
		}
		return msg;
	}

	public String deleteUser(int userId) {
		// TODO Auto-generated method stub
		
		String msg = ""; 
		String sql = "delete from user where UserID = ?";
		//Object[] params = new Object[] { userId };
		int count  = jdbcTemplate.update(sql,userId);
		if (count==1)
		{
			msg = "Delete Successful";
		}
		else
		{
			msg = "Delete Unsuccessful";
		}
		return msg;
	}


}
