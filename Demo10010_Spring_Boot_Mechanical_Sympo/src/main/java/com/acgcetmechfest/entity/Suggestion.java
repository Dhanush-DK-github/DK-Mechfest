package com.acgcetmechfest.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
public class Suggestion {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Integer suggestion_id;
	private String name;
	private String mobileNo;
	private String emailId;
	private String message;
	public Integer getSuggestion_id() {
		return suggestion_id;
	}
	public void setSuggestion_id(Integer suggestion_id) {
		this.suggestion_id = suggestion_id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getMobileNo() {
		return mobileNo;
	}
	public void setMobileNo(String mobileNo) {
		this.mobileNo = mobileNo;
	}
	public String getEmailId() {
		return emailId;
	}
	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}
	public String getMessage() {
		return message;
	}
	public void setMessage(String message) {
		this.message = message;
	}
	
	@Override
	public String toString() {
		return "Suggestion [suggestion_id=" + suggestion_id + ", name=" + name + ", mobileNo=" + mobileNo + ", emailId="
				+ emailId + ", message=" + message + "]";
	}
	
}
