package com.troy.domain;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class User {
	

	@Id
	@Column(name = "UserID",unique = true, nullable = false)
	@GeneratedValue
	private Integer UserID;
	
	@Column(name="UserEmail")
	private String UserEmail;
	
	@Column(name="UserPassword")
	private String UserPassword;
	
	@Column(name="UserFirstName")
	private String UserFirstName;
	
	@Column(name="UserLastName")
	private String UserLastName;
	
	@Column(name="UserAddress")
	private String UserAddress;
	
	@Column(name="UserAddress2")
	private String UserAddress2;
	
	@Column(name="UserCity")
	private String UserCity;
	
	@Column(name="UserState")
	private String UserState;
	
	@Column(name="UserCountry")
	private String UserCountry;
	
	@Column(name="UserZip")
	private String UserZip;
	
	@Column(name="UserPhone")
	private String UserPhone;
	
	@Column(name="UserEmailVerified")
	private boolean UserEmailVerified;
	
	@Column(name="UserRegistrationDate")
	private Date UserRegistrationDate;
	
	@Column(name="UserVerificationCode")
	private boolean UserVerificationCode;
	

	public Integer getUserID() {
		return UserID;
	}

	public void setUserID(Integer userID) {
		UserID = userID;
	}

	public String getUserEmail() {
		return UserEmail;
	}

	public void setUserEmail(String userEmail) {
		UserEmail = userEmail;
	}

	public String getUserPassword() {
		return UserPassword;
	}

	public void setUserPassword(String userPassword) {
		UserPassword = userPassword;
	}

	public String getUserFirstName() {
		return UserFirstName;
	}

	public void setUserFirstName(String userFirstName) {
		UserFirstName = userFirstName;
	}

	public String getUserLastName() {
		return UserLastName;
	}

	public void setUserLastName(String userLastName) {
		UserLastName = userLastName;
	}

	public String getUserAddress() {
		return UserAddress;
	}

	public void setUserAddress(String userAddress) {
		UserAddress = userAddress;
	}

	public String getUserAddress2() {
		return UserAddress2;
	}

	public void setUserAddress2(String userAddress2) {
		UserAddress2 = userAddress2;
	}

	public String getUserCity() {
		return UserCity;
	}

	public void setUserCity(String userCity) {
		UserCity = userCity;
	}

	public String getUserState() {
		return UserState;
	}

	public void setUserState(String userState) {
		UserState = userState;
	}

	public String getUserCountry() {
		return UserCountry;
	}

	public void setUserCountry(String userCountry) {
		UserCountry = userCountry;
	}

	public String getUserZip() {
		return UserZip;
	}

	public void setUserZip(String userZip) {
		UserZip = userZip;
	}

	public String getUserPhone() {
		return UserPhone;
	}

	public void setUserPhone(String userPhone) {
		UserPhone = userPhone;
	}

	public boolean isUserEmailVerified() {
		return UserEmailVerified;
	}

	public void setUserEmailVerified(boolean userEmailVerified) {
		UserEmailVerified = userEmailVerified;
	}

	public Date getUserRegistrationDate() {
		return UserRegistrationDate;
	}

	public void setUserRegistrationDate(Date userRegistrationDate) {
		UserRegistrationDate = userRegistrationDate;
	}

	public boolean isUserVerificationCode() {
		return UserVerificationCode;
	}

	public void setUserVerificationCode(boolean userVerificationCode) {
		UserVerificationCode = userVerificationCode;
	}

	@Override
	public String toString() {
		return "User [UserID=" + UserID + ", UserEmail=" + UserEmail + ", UserPassword=" + UserPassword
				+ ", UserFirstName=" + UserFirstName + ", UserLastName=" + UserLastName + ", UserAddress=" + UserAddress
				+ ", UserAddress2=" + UserAddress2 + ", UserCity=" + UserCity + ", UserState=" + UserState
				+ ", UserCountry=" + UserCountry + ", UserZip=" + UserZip + ", UserPhone=" + UserPhone
				+ ", UserEmailVerified=" + UserEmailVerified + ", UserRegistrationDate=" + UserRegistrationDate
				+ ", UserVerificationCode=" + UserVerificationCode + "]";
	}

	
	
	

}
