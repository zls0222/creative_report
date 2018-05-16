package com.creative.report.data.vo;

import java.io.Serializable;

public class Condition implements Serializable{
	private static final long serialVersionUID=1L;



	private String advertiser;
	private String advertiserIndustry;
	private String creativeType;
	private String creativeSize;

	public Condition(String advertiser) {
		this.advertiser = advertiser;
	}

	public Condition(String advertiser, String advertiserIndustry, String creativeType, String creativeSize) {
		this.advertiser = advertiser;
		this.advertiserIndustry = advertiserIndustry;
		this.creativeType = creativeType;
		this.creativeSize = creativeSize;
	}

	public Condition() {
	}

	@Override
	public boolean equals(Object o) {
		if (this == o) return true;
		if (o == null || getClass() != o.getClass()) return false;

		Condition condition = (Condition) o;

		if (advertiser != null ? !advertiser.equals(condition.advertiser) : condition.advertiser != null) return false;
		if (advertiserIndustry != null ? !advertiserIndustry.equals(condition.advertiserIndustry) : condition.advertiserIndustry != null)
			return false;
		if (creativeType != null ? !creativeType.equals(condition.creativeType) : condition.creativeType != null)
			return false;
		return !(creativeSize != null ? !creativeSize.equals(condition.creativeSize) : condition.creativeSize != null);

	}

	@Override
	public int hashCode() {
		int result = advertiser != null ? advertiser.hashCode() : 0;
		result = 31 * result + (advertiserIndustry != null ? advertiserIndustry.hashCode() : 0);
		result = 31 * result + (creativeType != null ? creativeType.hashCode() : 0);
		result = 31 * result + (creativeSize != null ? creativeSize.hashCode() : 0);
		return result;
	}

	public void setAdvertiser(String advertiser) {
		this.advertiser = advertiser;
	}

	public void setAdvertiserIndustry(String advertiserIndustry) {
		this.advertiserIndustry = advertiserIndustry;
	}

	public void setCreativeType(String creativeType) {
		this.creativeType = creativeType;
	}

	public void setCreativeSize(String creativeSize) {
		this.creativeSize = creativeSize;
	}




















	@Override
	public String toString() {
		return "Condition [advertiser=" + advertiser + ", advertiserIndustry=" + advertiserIndustry + ", creativeType=" + creativeType + ", creativeSize=" + creativeSize+"]";
	}

	
	
	
}
