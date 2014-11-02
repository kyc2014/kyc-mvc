package net.kyc.spring.web.poll.service;

import net.kyc.spring.web.poll.model.Poll;

public interface PollService
{
	public void getPoll();
	public void voteForPoll(int qid,int aid);
}
