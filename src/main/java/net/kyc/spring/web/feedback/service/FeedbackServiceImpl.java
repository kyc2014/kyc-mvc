package net.kyc.spring.web.feedback.service;

import net.kyc.spring.web.feedback.dao.FeedbackDAO;
import net.kyc.spring.web.feedback.model.Feedback;

public class FeedbackServiceImpl implements FeedbackService{
	
	private FeedbackDAO feedbackDao;
	
	public void setFeedbackDao(FeedbackDAO feedbackDao){
		this.feedbackDao = feedbackDao;
	}

	@Override
	public void saveFeedback(Feedback feedback) {
		feedbackDao.savefeedback(feedback);
	}
	
	@Override
	public boolean subscribe(String email) {
		return feedbackDao.subscribe(email);
	}

}
