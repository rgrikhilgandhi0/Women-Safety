package VO;

public class AttachmentVO 
{
	private int attachmentId;
	private String attachmentPath;
	private String attachmentFileName;
	private String encryptedFileName;
	private StaffComplaintVO staffComplaintVO;
	public StaffComplaintVO getStaffComplaintVO() {
		return staffComplaintVO;
	}
	public void setStaffComplaintVO(StaffComplaintVO staffComplaintVO) {
		this.staffComplaintVO = staffComplaintVO;
	}
	public int getAttachmentId() {
		return attachmentId;
	}
	public void setAttachmentId(int attachmentId) {
		this.attachmentId = attachmentId;
	}
	public String getAttachmentPath() {
		return attachmentPath;
	}
	public void setAttachmentPath(String attachmentPath) {
		this.attachmentPath = attachmentPath;
	}
	public String getAttachmentFileName() {
		return attachmentFileName;
	}
	public void setAttachmentFileName(String attachmentFileName) {
		this.attachmentFileName = attachmentFileName;
	}
	public String getEncryptedFileName() {
		return encryptedFileName;
	}
	public void setEncryptedFileName(String encryptedFileName) {
		this.encryptedFileName = encryptedFileName;
	}
	
}
