package VO;

import java.io.Serializable;

public class PoliceStaffVO implements Serializable
{
	private int policeStaffId;
	private String policeName;
	private PostVO postVO;
	private AreaVO areaVO;
	private PoliceStationVO policeStationVO;
	private String experience;
	private long contactNo;
	
	private String achievements;
	private LoginVO loginVO;
	public LoginVO getLoginVO() {
		return loginVO;
	}
	public void setLoginVO(LoginVO loginVO) {
		this.loginVO = loginVO;
	}
	
	public String getAchievements() {
		return achievements;
	}
	public void setAchievements(String achievements) {
		this.achievements = achievements;
	}
	public PostVO getPostVO() {
		return postVO;
	}
	public void setPostVO(PostVO postVO) {
		this.postVO = postVO;
	}
	public PoliceStationVO getPoliceStationVO() 
	{
		return policeStationVO;
	}
	public void setPoliceStationVO(PoliceStationVO policeStationVO) 
	{
		this.policeStationVO = policeStationVO;
	}
	public int getPoliceStaffId() 
	{
		return policeStaffId;
	}
	public void setPoliceStaffId(int policeStaffId) {
		this.policeStaffId = policeStaffId;
	}
	public String getPoliceName() {
		return policeName;
	}
	public void setPoliceName(String policeName) {
		this.policeName = policeName;
	}
		public String getExperience() {
		return experience;
	}
	public void setExperience(String experience) {
		this.experience = experience;
	}
	public long getContactNo() {
		return contactNo;
	}
	public void setContactNo(long contactNo) {
		this.contactNo = contactNo;
	}
	
	public AreaVO getAreaVO() {
		return areaVO;
	}
	public void setAreaVO(AreaVO areaVO) {
		this.areaVO = areaVO;
	}		
}