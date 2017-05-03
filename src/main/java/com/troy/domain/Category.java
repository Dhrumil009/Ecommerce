package com.troy.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity(name="category")	
public class Category {
	
	
	@Id
	@Column(unique = true, nullable = false,name="categoryid")
	@GeneratedValue
	private Integer categoryID;
	
	@Column(name = "catalogid")
	private Integer catalogID;
	
	@Column(name = "categoryname")
	private String categoryName="";
	
	@Column(name = "categorydescription")
	private String categoryDescription="";
	
	@Column(name = "categoryimage")
	private String categoryImage="";
	

	public Integer getCategoryID() {
		return categoryID;
	}

	public void setCategoryID(Integer categoryID) {
		this.categoryID = categoryID;
	}

	public Integer getCatalogID() {
		return catalogID;
	}

	public void setCatalogID(Integer catalogID) {
		this.catalogID = catalogID;
	}

	public String getCategoryName() {
		return categoryName;
	}

	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
	}

	public String getCategoryDescription() {
		return categoryDescription;
	}

	public void setCategoryDescription(String categoryDescription) {
		this.categoryDescription = categoryDescription;
	}

	public String getCategoryImage() {
		return categoryImage;
	}

	public void setCategoryImage(String categoryImage) {
		this.categoryImage = categoryImage;
	}

	@Override
	public String toString() {
		return "Category [categoryID=" + categoryID + ", catalogID=" + catalogID + ", categoryName=" + categoryName
				+ ", categoryDescription=" + categoryDescription + ", categoryImage=" + categoryImage + "]";
	}

	
	
	
	
	

}
