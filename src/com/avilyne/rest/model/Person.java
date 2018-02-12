package com.avilyne.rest.model;
 
import javax.xml.bind.annotation.XmlRootElement;

import VO.LoginVO;
import VO.PhotoVO;
 
@XmlRootElement
public class Person 
{ 
	private int registrationId;
	private String fullName;
	private String address;
	private int phone;
	private LoginVO loginVO;
	private PhotoVO photoVO;
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
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public int getPhone() {
		return phone;
	}
	public void setPhone(int phone) {
		this.phone = phone;
	}
	public LoginVO getLoginVO() {
		return loginVO;
	}
	public void setLoginVO(LoginVO loginVO) {
		this.loginVO = loginVO;
	}
	public PhotoVO getPhotoVO() {
		return photoVO;
	}
	public void setPhotoVO(PhotoVO photoVO) {
		this.photoVO = photoVO;
	}
    public Person() 
    {     
    	registrationId = -1;
        fullName = "";
        address = "";
        phone = -1;
    }
	public Person(int registrationId, String fullName, String address, int phone) 
	{
        this.registrationId = registrationId;
        this.fullName = fullName;
        this.address = address;
        this.phone = phone;
      
    }

}