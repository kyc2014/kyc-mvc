package net.kyc.spring.web.candidate.model;

public class Poll {
	private String question;
	private int options;
	private String[] option;
	private int[] votes;
	public String getQuestion() {
		return question;
	}
	public void setQuestion(String question) {
		this.question = question;
	}
	public int getOptions() {
		return options;
	}
	public void setOptions(int options) {
		this.options = options;
	}
	public String[] getOption() {
		return option;
	}
	public void setOption(String[] option) {
		this.option = option;
	}
	public int[] getVotes() {
		return votes;
	}
	public void setVotes(int[] votes) {
		this.votes = votes;
	}
}
