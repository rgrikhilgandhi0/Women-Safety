package VO;

import java.io.Serializable;


public class AssignLocationVO implements Serializable{

	private int assignLocationId;
	private PoliceStationVO policeStationVO;
	private LocationVO locationVO;
	
	public int getAssignLocationId() {
		return assignLocationId;
	}
	public void setAssignLocationId(int assignLocationId) {
		this.assignLocationId = assignLocationId;
	}
	public PoliceStationVO getPoliceStationVO() {
		return policeStationVO;
	}
	public void setPoliceStationVO(PoliceStationVO policeStationVO) {
		this.policeStationVO = policeStationVO;
	}
	public LocationVO getLocationVO() {
		return locationVO;
	}
	public void setLocationVO(LocationVO locationVO) {
		this.locationVO = locationVO;
	}
	
	
	
	
	
}
