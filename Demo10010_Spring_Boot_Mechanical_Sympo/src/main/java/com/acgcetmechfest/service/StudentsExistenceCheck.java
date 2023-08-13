package com.acgcetmechfest.service;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.acgcetmechfest.entity.Registration;
import com.acgcetmechfest.entity.Student;
import com.acgcetmechfest.repository.RegistrationRepository;

@Service
public class StudentsExistenceCheck {
	
	@Autowired
	private RegistrationRepository registrationRepo;

	public boolean checkStudentsExistence(Registration registration) {
		
		String type = registration.getType();
		String name = registration.getName();
		
		Iterator<Student> itr = registration.getStudents().iterator();
        
        while (itr.hasNext())
        {
            Student student = itr.next();
            
            if(existsStudent(student, type, name)) {
            	
            	RegistrationService.message = "Student: "+student.getName()+" is already registered in this "+type.toUpperCase()+": "+name;
            	
//            	System.out.println("Student exists");
            	
            	return true;
            }
            
        }
		
		return false;
	}

	private boolean existsStudent(Student student, String type, String name) {
		
		if(registrationRepo.findStudentByEmailAndMobileNo(type, name, student.getEmailId(), student.getMobileNo())!=null||
				
				registrationRepo.findStudentByEmail(type, name, student.getEmailId())!=null||
		
				registrationRepo.findStudentByMobileNo(type, name, student.getMobileNo())!=null) {
			
			System.out.println("Student exists with mobile or email or both");
			
			return true;
			
		}
		else
			return false;
		
	}

}
