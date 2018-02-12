package VO;

public class RegistrationVO 
{
	private int registrationId;
	private String fullName;
	/*private String gender;*/
	private String address;
/*	private String birthDay;*/
	private int phone;
	private LoginVO loginVO;
	private PhotoVO photoVO;
	public PhotoVO getPhotoVO() {
		return photoVO;
	}
	public void setPhotoVO(PhotoVO photoVO) {
		this.photoVO = photoVO;
	}
	public LoginVO getLoginVO() {
		return loginVO;
	}
	public void setLoginVO(LoginVO loginVO) {
		this.loginVO = loginVO;
	}
	public int getRegistrationId() {
		return registrationId;
	}
	public void setRegistrationId(int registrationId) {
		this.registrationId = registrationId;
	}
	public String getFullName() {
		return fullName;
	}
	public void setFullName(String fullName) {
		this.fullName = fullName;
	}
/*	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}*/
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	/*public String getBirthDay() {
		return birthDay;
	}
	public void setBirthDay(String birthDay) {
		this.birthDay = birthDay;
	}*/
	public int getPhone() {
		return phone;
	}
	public void setPhone(int phone) {
		this.phone = phone;
	}
}
