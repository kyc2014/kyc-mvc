package net.knowyourcandidate.spring.web.party.dao;

public interface PartyDao {
	public Object retrieveParty(String name);
	public Object retrievePartyForSearch(String name);
}
