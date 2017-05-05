package com.troy.domain;

public class Cart {

	private Integer productID;
	private String productName="";
	private Float productPrice;
	private String productShortDesc="";
	private String productImage="";
	private Float productQuantity;
	private String orderMsg;
	
	
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
	public String getProductShortDesc() {
		return productShortDesc;
	}
	public void setProductShortDesc(String productShortDesc) {
		this.productShortDesc = productShortDesc;
	}
	public String getProductImage() {
		return productImage;
	}
	public void setProductImage(String productImage) {
		this.productImage = productImage;
	}
	public Float getProductQuantity() {
		return productQuantity;
	}
	public void setProductQuantity(Float productQuantity) {
		this.productQuantity = productQuantity;
	}
	public String getOrderMsg() {
		return orderMsg;
	}
	public void setOrderMsg(String orderMsg) {
		this.orderMsg = orderMsg;
	}
	
	@Override
	public String toString() {
		return "Cart [productID=" + productID + ", productName=" + productName + ", productPrice=" + productPrice
				+ ", productShortDesc=" + productShortDesc + ", productImage=" + productImage + ", productQuantity="
				+ productQuantity + ", orderMsg=" + orderMsg + "]";
	}


	
	
	
	
}
