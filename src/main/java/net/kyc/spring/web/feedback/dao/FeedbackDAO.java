package net.kyc.spring.web.feedback.dao;

import net.kyc.spring.web.feedback.model.Feedback;

public interface FeedbackDAO {
	public void savefeedback(Feedback feedback);
	public boolean subscribe(String email);
}
