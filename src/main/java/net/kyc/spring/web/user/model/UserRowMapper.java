package net.kyc.spring.web.user.model;

import java.sql.ResultSet;
import java.sql.SQLException;
import org.springframework.jdbc.core.RowMapper;
import net.kyc.spring.web.user.model.User;

public class UserRowMapper implements RowMapper{

	@Override
	public Object mapRow(ResultSet rs, int rowNum) throws SQLException {
		User user = new User();
		user.setUserId(rs.getInt("userId"));
		user.setUserName(rs.getString("userName"));
		user.setName(rs.getString("name"));
		user.setEmail(rs.getString("email"));
		user.setPoints(rs.getInt("points"));
		user.setConstituencyCode(rs.getInt("constituencyCode"));
		return user;
	}
}
