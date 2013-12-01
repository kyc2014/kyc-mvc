package net.kyc.spring.web.user.model;

import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;
import net.kyc.spring.web.user.model.User;

public class UserRowMapper implements RowMapper{

	@Override
	public Object mapRow(ResultSet rs, int rowNum) throws SQLException {
		User user = new User();
		user.setUserId(rs.getInt("user_id"));
		user.setUserName(rs.getString("user_name"));
		user.setFirstName(rs.getString("fist_name"));
		user.setSecondName(rs.getString("second_name"));
		user.setDob(rs.getString("dob"));
		user.setGender(rs.getString("gender"));
		user.setEmail(rs.getString("email"));
		user.setConstituencyCode(rs.getInt("constituencyCode"));
		return user;
	}
}
