package net.kyc.spring.web.feedback.service;

import net.kyc.spring.web.feedback.model.Feedback;

public interface FeedbackService {
	public void saveFeedback(Feedback feedback);
	public boolean subscribe(String email);
	public boolean saveSurvey(String manifesto, boolean freebies);
}
