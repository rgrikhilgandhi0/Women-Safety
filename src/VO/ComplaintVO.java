	package VO;

import java.io.Serializable;

public class ComplaintVO implements Serializable {
	private int complaintId;
	private String subject;
	private String complaintDescription;
	private LoginVO to;
	private LoginVO from;
	private String reply;
    private PoliceStationVO policeStationVO; 
	public PoliceStationVO getPoliceStationVO() 
	{
		return policeStationVO;
	}
	public void setPoliceStationVO(PoliceStationVO policeStationVO) 
	{
		this.policeStationVO = policeStationVO;
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
	public String getReply() {
		return reply;
	}
	public void setReply(String reply) {
		this.reply = reply;
	}
	public int getComplaintId() {
		return complaintId;
	}
	public void setComplaintId(int complaintId) {
		this.complaintId = complaintId;
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
