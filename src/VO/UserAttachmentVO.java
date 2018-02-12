package VO;

public class UserAttachmentVO 
{
	private int userAttachmentId;
	private String userAttachmentPath;
	private String userAttachmentFileName;
	private String encryptedFileName;
	private ComplaintVO ComplaintVO;
	public int getUserAttachmentId() {
		return userAttachmentId;
	}
	public void setUserAttachmentId(int userAttachmentId) {
		this.userAttachmentId = userAttachmentId;
	}
	public String getUserAttachmentPath() {
		return userAttachmentPath;
	}
	public void setUserAttachmentPath(String userAttachmentPath) {
		this.userAttachmentPath = userAttachmentPath;
	}
	public String getUserAttachmentFileName() {
		return userAttachmentFileName;
	}
	public void setUserAttachmentFileName(String userAttachmentFileName) {
		this.userAttachmentFileName = userAttachmentFileName;
	}
	public String getEncryptedFileName() {
		return encryptedFileName;
	}
	public void setEncryptedFileName(String encryptedFileName) {
		this.encryptedFileName = encryptedFileName;
	}
	public ComplaintVO getComplaintVO() {
		return ComplaintVO;
	}
	public void setComplaintVO(ComplaintVO complaintVO) {
		ComplaintVO = complaintVO;
	}	
}
