package com.webproject.app.Login;

public class User {
	private String userID;
	private String userPassword;
	private String userName;
	private String userEmail;
	private String userGender;
	private int userPhoneNum; 

	
	public String getUserID() {
		return userID;
	}
	public void setUserID(String userID) {
		this.userID = userID;
	}
	public String getUserPassword() {
		return userPassword;
	}
	public void setUserPassword(String userPassword) {
		this.userPassword = userPassword;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public String getUserGender() {
		return userGender;
	}
	public void setUserGender(String userGender) {
		this.userGender = userGender;
	}
	public int getUserPhoneNum() {
		return userPhoneNum;
	}
	public void setUserPhoneNum(int phoneNum) {
		this.userPhoneNum = phoneNum;
	}
}
