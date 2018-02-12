package VO;

public class PhotoVO 
{
	private int photoId;
	private String photoPath;
	private String encryptedFileName;
	
	public String getEncryptedFileName() {
		return encryptedFileName;
	}
	public void setEncryptedFileName(String encryptedFileName) {
		this.encryptedFileName = encryptedFileName;
	}
	public int getPhotoId() {
		return photoId;
	}
	public void setPhotoId(int photoId) {
		this.photoId = photoId;
	}
	public String getPhotoPath() {
		return photoPath;
	}
	public void setPhotoPath(String photoPath) {
		this.photoPath = photoPath;
	}
}
