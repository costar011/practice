package com.practice.model;

public class MemberVO {
	
	/*
	NAME
	MOBLIE
	HP
	ZIP_CODE
	ADDRESS
	ADDRESS2
	SEX
	ID
	PASSWORD
	EMAIL
	*/
	
	private String member_uid       ;
	private String name      	    ;
	private String mobile           ;
	private String hp        	    ;
	private String zip_code   	    ;
	private String address    		;
	private String address2  	    ;
	private String sex        		;
	private String id         		;
	private String password   		;
	private String email      		;
	
	
	public String getMember_uid() {
		return member_uid;
	}
	public void setMember_uid(String member_uid) {
		this.member_uid = member_uid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getMobile() {
		return mobile;
	}
	public void setMobile(String mobile) {
		this.mobile = mobile;
	}
	public String getHp() {
		return hp;
	}
	public void setHp(String hp) {
		this.hp = hp;
	}
	public String getZip_code() {
		return zip_code;
	}
	public void setZip_code(String zip_code) {
		this.zip_code = zip_code;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getAddress2() {
		return address2;
	}
	public void setAddress2(String address2) {
		this.address2 = address2;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
}