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
	private Integer CatalogID;
	
	@Column(name = "catalogname")
	private String CatalogName;
	@Column(name = "catalogdesc")
	private String CatalogDesc;
	@Column(name = "catalogimage")
	private String CatalogImage;
	
	public Integer getCatalogID() {
		return CatalogID;
	}
	public void setCatalogID(Integer catalogID) {
		CatalogID = catalogID;
	}
	public String getCatalogName() {
		return CatalogName;
	}
	public void setCatalogName(String catalogName) {
		CatalogName = catalogName;
	}
	public String getCatalogDesc() {
		return CatalogDesc;
	}
	public void setCatalogDesc(String catalogDesc) {
		CatalogDesc = catalogDesc;
	}
	public String getCatalogImage() {
		return CatalogImage;
	}
	public void setCatalogImage(String catalogImage) {
		CatalogImage = catalogImage;
	}
	@Override
	public String toString() {
		return "Catalog [CatalogID=" + CatalogID + ", CatalogName=" + CatalogName + ", CatalogDesc=" + CatalogDesc
				+ ", CatalogImage=" + CatalogImage + "]";
	}
	
	


}
