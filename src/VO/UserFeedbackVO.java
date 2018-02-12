package VO;

public class UserFeedbackVO {
	private int feedbackId;
	private String feedbackDescription;
	private LoginVO from;
	public LoginVO getFrom() {
		return from;
	}
	public void setFrom(LoginVO from) {
		this.from = from;
	}
	public int getFeedbackId() {
		return feedbackId;
	}
	public void setFeedbackId(int feedbackId) {
		this.feedbackId = feedbackId;
	}
	public String getFeedbackDescription() {
		return feedbackDescription;
	}
	public void setFeedbackDescription(String feedbackDescription) {
		this.feedbackDescription = feedbackDescription;
	}
	
	
}
