package VO;

import java.io.Serializable;

public class AreaVO implements Serializable
{
	private int areaId;
	private String areaName;
	private int areaPincode;
	private String areaDescription;
	public int getAreaId() {
		return areaId;
	}
	public void setAreaId(int areaId) {
		this.areaId = areaId;
	}
	public String getAreaName() {
		return areaName;
	}
	public void setAreaName(String areaName) {
		this.areaName = areaName;
	}
	public int getAreaPincode() {
		return areaPincode;
	}
	public void setAreaPincode(int areaPincode) {
		this.areaPincode = areaPincode;
	}
	public String getAreaDescription() {
		return areaDescription;
	}
	public void setAreaDescription(String areaDescription) {
		this.areaDescription = areaDescription;
	}
	
}
