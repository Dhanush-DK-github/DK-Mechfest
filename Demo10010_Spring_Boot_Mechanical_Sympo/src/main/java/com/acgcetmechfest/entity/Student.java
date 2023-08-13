package com.acgcetmechfest.entity;

import java.lang.reflect.Field;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="student_details")
public class Student {
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name = "student_detail_ID")
	private Integer id;
	@Column(name = "student_name")
	private String name;
	private String rollNo;
	private String year;
	private String mobileNo;
	private String emailId;
	private String collegeName;
	private Integer points;
	
//	@ManyToOne(fetch = FetchType.LAZY)
//	@JoinColumn(name = "registration_ID", referencedColumnName = "registration_ID")
//	private Registration registration;
	
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getRollNo() {
		return rollNo;
	}
	public void setRollNo(String rollNo) {
		this.rollNo = rollNo;
	}
	public String getYear() {
		return year;
	}
	public void setYear(String year) {
		this.year = year;
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
	
	public String getCollegeName() {
		return collegeName;
	}
	public void setCollegeName(String collegeName) {
		this.collegeName = collegeName;
	}
	
	public Integer getPoints() {
		return points;
	}
	public void setPoints(Integer points) {
		this.points = points;
	}
	
//	public Registration getRegistration() {
//		return registration;
//	}
//	public void setRegistration(Registration registration) {
//		this.registration = registration;
//	}
//	
	@Override
	public String toString() {
		return "Student [id=" + id + ", name=" + name + ", rollNo=" + rollNo + ", year=" + year + ", mobileNo="
				+ mobileNo + ", emailId=" + emailId + ", collegeName=" + collegeName + ", points=" + points+"]";
	}
	
	public boolean isNull() {
		 
        Field fields[] = this.getClass().getDeclaredFields();
        int count = 0;
        
        for (Field f : fields) {
            try {
                Object value = f.get(this);
                if (value == null || value == "") {
                    count++;
                }
            }
            catch (IllegalArgumentException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
            catch (IllegalAccessException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }


        }
        if(count==fields.length) 
        	return true;
        else
        	return false;

    }

}
