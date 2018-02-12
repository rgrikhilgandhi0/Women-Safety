package VO;

import java.io.Serializable;

public class StaffComplaintVO implements Serializable{
	private  int staffComplaintId;
	private String subject;
	private String complaintDescription;
	private LoginVO to;
	private LoginVO from;
	private String reply;
	
	public String getReply() {
		return reply;
	}
	public void setReply(String reply) {
		this.reply = reply;
	}
	public LoginVO getTo() {
		return to;
	}
	public void setTo(LoginVO to) {
		this.to = to;
	}
	public LoginVO getFrom() {
		return from;
	}
	public void setFrom(LoginVO from) {
		this.from = from;
	}
	public  int getStaffComplaintId() {
		return staffComplaintId;
	}
	public void setStaffComplaintId(int staffComplaintId) {
		this.staffComplaintId = staffComplaintId;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getComplaintDescription() {
		return complaintDescription;
	}
	public void setComplaintDescription(String complaintDescription) {
		this.complaintDescription = complaintDescription;
	}	
}