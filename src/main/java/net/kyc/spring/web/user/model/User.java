package net.kyc.spring.web.user.model;

public class User {
	
	private int userId;
	
	private String userName;
	
	private String name;
	
	private String password;
	
	private String email;
	
	private int points;
	
	private int constituencyCode;

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getPoints() {
		return points;
	}

	public void setPoints(int points) {
		this.points = points;
	}

	public int getConstituencyCode() {
		return constituencyCode;
	}

	public void setConstituencyCode(int constituencyCode) {
		this.constituencyCode = constituencyCode;
	}
	
	
}
