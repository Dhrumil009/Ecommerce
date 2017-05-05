package com.troy.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity(name="order_item")	
public class OrderItem {
	
	@Id
	@Column(unique = true, nullable = false,name="orderitemid")
	@GeneratedValue
	private Integer orderItemId;
	
	@Column(name = "orderid")
	private Integer OrderID;
	
	@Column(name = "productid")
	private Integer productID;
	
	@Column(name = "productname")
	private String productName;
	
	
	@Column(name = "productquantity")
	private Float productQuantity;
	
	@Column(name = "productprice")
	private Float productPrice;

	
	public Integer getOrderItemId() {
		return orderItemId;
	}

	public void setOrderItemId(Integer orderItemId) {
		this.orderItemId = orderItemId;
	}

	public Integer getOrderID() {
		return OrderID;
	}

	public void setOrderID(Integer orderID) {
		OrderID = orderID;
	}

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

	public Float getProductQuantity() {
		return productQuantity;
	}

	public void setProductQuantity(Float productQuantity) {
		this.productQuantity = productQuantity;
	}

	public Float getProductPrice() {
		return productPrice;
	}

	public void setProductPrice(Float productPrice) {
		this.productPrice = productPrice;
	}

	@Override
	public String toString() {
		return "OrderItem [orderItemId=" + orderItemId + ", OrderID=" + OrderID + ", productID=" + productID
				+ ", productName=" + productName + ", productQuantity=" + productQuantity + ", productPrice="
				+ productPrice + "]";
	}
	
	
	
	
	

}
