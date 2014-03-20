package net.kyc.spring.web.controllers;

import javax.servlet.http.HttpServletRequest;

import net.kyc.errorcodes.ErrorCodes;
import net.kyc.spring.web.candidate.model.Poll;
import net.kyc.spring.web.feedback.model.Feedback;
import net.kyc.spring.web.feedback.service.FeedbackService;
import net.kyc.spring.web.user.model.User;
import net.kyc.spring.web.user.service.UserService;
import net.tanesha.recaptcha.ReCaptchaImpl;
import net.tanesha.recaptcha.ReCaptchaResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.request.WebRequest;
import org.apache.commons.validator.EmailValidator;

@Controller
public class UserController {
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private FeedbackService feedbackService;
	
	@RequestMapping(value="/feedback")
	public String feedBackPage(){
		return "feedback";
	}
	
	@RequestMapping(value="/user/poll", method = RequestMethod.POST)
	public @ResponseBody String getPoll()
	{
		String message;
		message="{\"question\":\"Next PM\",\"options\":\"2\",\"option\":{\"Rahul Gandhi\":23,\"Narendra Modi\":49}}";
		return message;
	}
	@RequestMapping(value="/user/voteforpoll", method = RequestMethod.POST)
	public @ResponseBody String voteForPoll(@RequestParam(value="qid",required=true) int qid,@RequestParam(value="aid",required=true) int aid)
	{
		
		return "{state:\'success\'}";
	}
	
	@RequestMapping(value="/user/feedback", method = RequestMethod.POST)
	@ResponseBody
	public String feedBack(@RequestParam(value="name", required=true) String name, @RequestParam(value="age", required=true) int age,
			@RequestParam(value="gender", required=true) String gender,@RequestParam(value="email", required=true) String email,
			@RequestParam(value="feedback", required=true) String feedBack, @RequestParam(value="recaptcha_challenge_field", required=true) String challenge, 
			@RequestParam(value="recaptcha_response_field", required=true) String uresponse, HttpServletRequest request){
		String message = "";
		ReCaptchaImpl reCaptcha = new ReCaptchaImpl();
		reCaptcha.setPrivateKey("6Lc7au4SAAAAAF4LbtPwGI59Ysvk6yG0x1gdNfQz ");
		ReCaptchaResponse reCaptchaResponse = reCaptcha.checkAnswer(request.getRemoteAddr(), challenge, uresponse);
		if(reCaptchaResponse.isValid()){
			Feedback feedback = new Feedback();
			feedback.setAge(age);
			feedback.setEmail(email);
			feedback.setFeedback(feedBack);
			feedback.setGender(gender);
			feedback.setName(name);
			feedbackService.saveFeedback(feedback);
			message = "{state:\'success\'}";
		}
		else{
			message = "{state:\'Invalid Captcha\'}";
		}
		return message;
	}
	
	@RequestMapping(value="/user/subscribe", method = RequestMethod.POST)
	@ResponseBody	
	public String feedBack(@RequestParam(value="email", required=true) String email){
		if(EmailValidator.getInstance().isValid(email)){
			if(feedbackService.subscribe(email)){	
				return "success";
			}
			else{
				return "Failure";
			}
		}
		else{
			return "Email Invalid";
		}
	}
	
	@RequestMapping(value="/user/survey", method = RequestMethod.POST)
	@ResponseBody	
	public String feedBack(@RequestParam(value="manifesto", required=true) String manifesto,
			@RequestParam(value="recaptcha_challenge_field", required=true) String challenge,
			@RequestParam(value="recaptcha_response_field", required=true) String uresponse,
			@RequestParam(value="freebies", required=true) boolean freebies,  HttpServletRequest request){
		ReCaptchaImpl reCaptcha = new ReCaptchaImpl();
		reCaptcha.setPrivateKey("6Lc7au4SAAAAAF4LbtPwGI59Ysvk6yG0x1gdNfQz ");
		ReCaptchaResponse reCaptchaResponse = reCaptcha.checkAnswer(request.getRemoteAddr(), challenge, uresponse);
		if(reCaptchaResponse.isValid()){
			feedbackService.saveSurvey(manifesto, freebies);
			return "success";
		}
		return "failure";
	}
		
}
