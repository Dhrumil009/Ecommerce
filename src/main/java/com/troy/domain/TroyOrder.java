package com.troy.domain;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity(name="order")	
public class TroyOrder {
	
	@Id
	@Column(unique = true, nullable = false,name="orderid")
	@GeneratedValue
	private Integer orderID;
	
	@Column(name = "userid")
	private Integer orderUserID; 
//	
//	@Column(name = "amount")
//	private Float orderAmount;
//	
//	@Column(name = "name")
//	private String orderShipName;
//	
//	@Column(name = "address")
//	private String orderShipAddress;
//	
//	@Column(name = "addresstwo")
//	private String shipaddresstwo;
//	
//	@Column(name = "city")
//	private String orderCity;
//	
//	
//	@Column(name = "zip")
//	private String orderZip;
//	
//	@Column(name = "country")	
//	private String orderCountry;
//	
//	@Column(name = "phone")
//	private String orderPhone;
//	
//	@Column(name = "email")
//	private String orderEmail;
//	
//	@Column(name = "troydate")
//	private String orderDate;
//	
//	@Column(name = "troystatus")
//	private String orderStatus;
//	
//	@Column(name = "comments")
//	private String orderComments;

	public Integer getOrderID() {
		return orderID;
	}

	public void setOrderID(Integer orderID) {
		this.orderID = orderID;
	}

	public Integer getOrderUserID() {
		return orderUserID;
	}

	public void setOrderUserID(Integer orderUserID) {
		this.orderUserID = orderUserID;
	}
//
//	public Float getOrderAmount() {
//		return orderAmount;
//	}
//
//	public void setOrderAmount(Float orderAmount) {
//		this.orderAmount = orderAmount;
//	}
//
//	public String getOrderShipName() {
//		return orderShipName;
//	}
//
//	public void setOrderShipName(String orderShipName) {
//		this.orderShipName = orderShipName;
//	}
//
//	public String getOrderShipAddress() {
//		return orderShipAddress;
//	}
//
//	public void setOrderShipAddress(String orderShipAddress) {
//		this.orderShipAddress = orderShipAddress;
//	}
//
//	public String getShipaddresstwo() {
//		return shipaddresstwo;
//	}
//
//	public void setShipaddresstwo(String shipaddresstwo) {
//		this.shipaddresstwo = shipaddresstwo;
//	}
//
//	public String getOrderCity() {
//		return orderCity;
//	}
//
//	public void setOrderCity(String orderCity) {
//		this.orderCity = orderCity;
//	}
//
//
//	public String getOrderZip() {
//		return orderZip;
//	}
//
//	public void setOrderZip(String orderZip) {
//		this.orderZip = orderZip;
//	}
//
//	public String getOrderCountry() {
//		return orderCountry;
//	}
//
//	public void setOrderCountry(String orderCountry) {
//		this.orderCountry = orderCountry;
//	}
//
//	public String getOrderPhone() {
//		return orderPhone;
//	}
//
//	public void setOrderPhone(String orderPhone) {
//		this.orderPhone = orderPhone;
//	}
//
//	public String getOrderEmail() {
//		return orderEmail;
//	}
//
//	public void setOrderEmail(String orderEmail) {
//		this.orderEmail = orderEmail;
//	}

//	public String getOrderDate() {
//		return orderDate;
//	}
//
//	public void setOrderDate(String orderDate) {
//		this.orderDate = orderDate;
//	}
//
//	public String getOrderStatus() {
//		return orderStatus;
//	}
//
//	public void setOrderStatus(String orderStatus) {
//		this.orderStatus = orderStatus;
//	}

//	public String getOrderComments() {
//		return orderComments;
//	}
//
//	public void setOrderComments(String orderComments) {
//		this.orderComments = orderComments;
//	}

	
	
	

	

}
