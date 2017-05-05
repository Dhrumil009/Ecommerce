package com.troy.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity(name="catalog")
public class Catalog {
	
	@Id
	@Column(unique = true, nullable = false,name="catalogid")
	@GeneratedValue
	private Integer catalogID;
	
	@Column(name = "catalogname")
	private String catalogName="";
	@Column(name = "catalogdesc")
	private String catalogDesc="";
	@Column(name = "catalogimage")
	private String catalogImage="";
	
	
	public Integer getCatalogID() {
		return catalogID;
	}
	public void setCatalogID(Integer catalogID) {
		this.catalogID = catalogID;
	}
	public String getCatalogName() {
		return catalogName;
	}
	public void setCatalogName(String catalogName) {
		this.catalogName = catalogName;
	}
	public String getCatalogDesc() {
		return catalogDesc;
	}
	public void setCatalogDesc(String catalogDesc) {
		this.catalogDesc = catalogDesc;
	}
	public String getCatalogImage() {
		return catalogImage;
	}
	public void setCatalogImage(String catalogImage) {
		this.catalogImage = catalogImage;
	}
	
	
	@Override
	public String toString() {
		return "Catalog [catalogID=" + catalogID + ", catalogName=" + catalogName + ", catalogDesc=" + catalogDesc
				+ ", catalogImage=" + catalogImage + "]";
	}
	

	


}
