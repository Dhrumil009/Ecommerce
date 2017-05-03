package com.troy.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity(name="product")
public class Product {
	
	@Id
	@Column(unique = true, nullable = false,name="productid")
	@GeneratedValue
	private Integer productID;
	
	@Column(name = "productname")
	private String productName="";
	
	@Column(name = "productprice")
	private Float productPrice;
	
	@Column(name = "productweight")
	private Float productWeight;
	
	@Column(name = "productcartdesc")
	private String productCartDesc="";
	
	@Column(name = "productshortdesc")
	private String productShortDesc="";
	
	@Column(name = "productlongdesc")
	private String productLongDesc="";
	
	@Column(name ="productthumb")
	private String 	productThumb="";
	
	@Column(name ="productimage")
	private String productImage="";
	
	@Column(name ="productcategoryid")
	private Integer productCategoryID=1;
	
	@Column(name ="productstock")
	private Float productQuantity;
	
	@Column(name ="productlive")
	private Integer ProductLive=1;
	
	

	public Integer getProductID() {
		return productID;
	}

	public void setProductID(Integer productID) {
		this.productID = productID;
	}

	public String getProductName() {
		return productName;
	}

	public void setProductName(String productName) {
		this.productName = productName;
	}

	public Float getProductPrice() {
		return productPrice;
	}

	public void setProductPrice(Float productPrice) {
		this.productPrice = productPrice;
	}

	public Float getProductWeight() {
		return productWeight;
	}

	public void setProductWeight(Float productWeight) {
		this.productWeight = productWeight;
	}

	public String getProductCartDesc() {
		return productCartDesc;
	}

	public void setProductCartDesc(String productCartDesc) {
		this.productCartDesc = productCartDesc;
	}

	public String getProductShortDesc() {
		return productShortDesc;
	}

	public void setProductShortDesc(String productShortDesc) {
		this.productShortDesc = productShortDesc;
	}

	public String getProductLongDesc() {
		return productLongDesc;
	}

	public void setProductLongDesc(String productLongDesc) {
		this.productLongDesc = productLongDesc;
	}

	public String getProductThumb() {
		return productThumb;
	}

	public void setProductThumb(String productThumb) {
		this.productThumb = productThumb;
	}

	public String getProductImage() {
		return productImage;
	}

	public void setProductImage(String productImage) {
		this.productImage = productImage;
	}

	public Integer getProductCategoryID() {
		return productCategoryID;
	}

	public void setProductCategoryID(Integer productCategoryID) {
		this.productCategoryID = productCategoryID;
	}

	

	public Float getProductQuantity() {
		return productQuantity;
	}

	public void setProductQuantity(Float productQuantity) {
		this.productQuantity = productQuantity;
	}

	public Integer getProductLive() {
		return ProductLive;
	}

	public void setProductLive(Integer productLive) {
		ProductLive = productLive;
	}

	@Override
	public String toString() {
		return "Product [productID=" + productID + ", productName=" + productName + ", productPrice=" + productPrice
				+ ", productWeight=" + productWeight + ", productCartDesc=" + productCartDesc + ", productShortDesc="
				+ productShortDesc + ", productLongDesc=" + productLongDesc + ", productThumb=" + productThumb
				+ ", productImage=" + productImage + ", productCategoryID=" + productCategoryID + ", productQuantity="
				+ productQuantity + ", ProductLive=" + ProductLive + "]";
	}

	

	
	
	

}
