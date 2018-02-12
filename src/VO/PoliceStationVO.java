package VO;

import java.io.Serializable;

public class PoliceStationVO implements Serializable
{
	private int policeStationId;
	private String policeStationName;
	private String policeStationAddress;
	private String policeStationContactNo;
	private String prisonDescription;
	private String latitude;
	private String longitude;
	
	public String getLatitude() {
		return latitude;
	}
	public void setLatitude(String latitude) {
		this.latitude = latitude;
	}
	public String getLongitude() {
		return longitude;
	}
	public void setLongitude(String longitude) {
		this.longitude = longitude;
	}
	private AreaVO areaVO;
	
	public AreaVO getAreaVO() {
		return areaVO;
	}
	public void setAreaVO(AreaVO areaVO) {
		this.areaVO = areaVO;
	}
	public int getPoliceStationId() {
		return policeStationId;
	}
	public void setPoliceStationId(int policeStationId) {
		this.policeStationId = policeStationId;
	}
	public String getPoliceStationName() {
		return policeStationName;
	}
	public void setPoliceStationName(String policeStationName) {
		this.policeStationName = policeStationName;
	}
	public String getPoliceStationAddress() {
		return policeStationAddress;
	}
	public void setPoliceStationAddress(String policeStationAddress) {
		this.policeStationAddress = policeStationAddress;
	}
		public String getPoliceStationContactNo() {
		return policeStationContactNo;
	}
	public void setPoliceStationContactNo(String policeStationContactNo) {
		this.policeStationContactNo = policeStationContactNo;
	}
		public String getPrisonDescription() {
		return prisonDescription;
	}
	public void setPrisonDescription(String prisonDescription) {
		this.prisonDescription = prisonDescription;
	}
	
	
}
