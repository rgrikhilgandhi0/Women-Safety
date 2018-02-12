package VO;

import java.io.Serializable;

public class FeedbackVO implements Serializable
{
	private int feedbackId;
	private String feedbackDescription;
	public int getFeedbackId() 
	{
		return feedbackId;
	}
	public void setFeedbackId(int feedbackId) 
	{
		this.feedbackId = feedbackId;
	}
	public String getFeedbackDescription() 
	{
		return feedbackDescription;
	}
	public void setFeedbackDescription(String feedbackDescription) 
	{
		this.feedbackDescription = feedbackDescription;
	}
}
