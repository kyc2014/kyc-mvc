package net.knowyourcandidate.spring.web.constituency.dao;

public interface ConstituencyDao {
	public Object retrieveConstituency(String name);
	public Object retrieveConstituencyForSearch(String name);
}
