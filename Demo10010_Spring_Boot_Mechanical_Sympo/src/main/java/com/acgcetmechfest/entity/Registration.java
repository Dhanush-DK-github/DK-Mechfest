package com.acgcetmechfest.entity;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.SequenceGenerator;

@Entity
public class Registration {
	
	@Id
	@GeneratedValue(generator = "REG_SEQ", strategy = GenerationType.SEQUENCE)
	@SequenceGenerator(name = "REG_SEQ", sequenceName = "MY_REG_SEQ", initialValue=2024000, allocationSize=1)
	@Column(name= "registration_ID")
	private Integer registrationId;
	private String type;
	private String name;
	
	@OneToMany(cascade = CascadeType.PERSIST)
	@JoinColumn(name = "registration_ID")
	private List<Student> students = new ArrayList<Student>();
	

	public Integer getRegistrationId() {
		return registrationId;
	}

	public void setRegistrationId(Integer registrationId) {
		this.registrationId = registrationId;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public List<Student> getStudents() {
		return students;
	}

	public void setStudents(List<Student> students) {
		this.students = students;
	}

	@Override
	public String toString() {
		return "Registration [registrationId=" + registrationId + ", type=" + type + ", name="
				+ name + ", students=" + students + "]";
	}
	
}
