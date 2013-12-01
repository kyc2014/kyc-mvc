package net.kyc.spring.web.security;

import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import net.kyc.spring.web.user.dao.UserDao;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;


public class CustomAuthenticationProvider implements AuthenticationProvider{
	
	private JdbcTemplate jdbcTemplate;
	private static String userNameSQL = "select user_name,password from users where user_name=?";
	private static String emailSQL = "select email,password from users where email=?";
	
	public void setDataSource(DataSource ds){
		this.jdbcTemplate = new JdbcTemplate(ds);
	}
	
	@Override
    public Authentication authenticate(Authentication authentication) throws AuthenticationException {
        String name = authentication.getName();
        String password = authentication.getCredentials().toString();
        
            List<GrantedAuthority> grantedAuths = new ArrayList<GrantedAuthority>();
            grantedAuths.add(new SimpleGrantedAuthority("ROLE_USER"));
            Authentication auth = new UsernamePasswordAuthenticationToken(name, password, grantedAuths);
            return auth;
        
    }
 
    @Override
    public boolean supports(Class<?> authentication) {
        return authentication.equals(UsernamePasswordAuthenticationToken.class);
    }
}
