package com.acgcetmechfest.service;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.acgcetmechfest.entity.Registration;
import com.acgcetmechfest.entity.Student;
import com.acgcetmechfest.entity.Suggestion;
import com.acgcetmechfest.repository.RegistrationRepository;
import com.acgcetmechfest.repository.SuggestionRepository;

@Service
public class RegistrationService {
	
	@Autowired
	private RegistrationRepository registrationRepo;
	@Autowired
	private SuggestionRepository suggestionRepo;
	
	@Autowired
	private EmailSenderService emailSender;
	
	@Autowired
	private StudentsExistenceCheck existenceCheck;
	
	static String message;
	
	
	public String addNewRegistration(Registration registration) {
		
		message = null;
		
		if(!(existenceCheck.checkStudentsExistence(registration))) {
			
			insertCollegeNames(registration.getStudents());
			
//			alterIdIncrementValues();
			
			Registration savedRegistration = registrationRepo.save(registration);
			
			if(savedRegistration!=null) {
				
//				emailSender.sendEmail(savedRegistration);
				
				message = "Successfully Registered. Your Registration Id: "+ savedRegistration.getRegistrationId();
				
			}
			
			else {
				
				message = "Something went wrong. Your Registration was not successful. Kindly try once again.";
				
			}
		
		}
		
		return message;
	}

	public void insertCollegeNames(List<Student> students) {
		
		if(students.size()>1) {
			String collegeName = students.get(0).getCollegeName();
			
			for(int i=1;i<students.size();i++) {
				students.get(i).setCollegeName(collegeName);
			}
			
		}
		
	}
	
	public void alterIdIncrementValues() {
		
		registrationRepo.alterRegistrationIdValues();
		registrationRepo.alterStudentDetailsIdValues();
		
	}

	public String addNewSuggestion(Suggestion newSuggestion) {
		
		Suggestion savedSuggestion = suggestionRepo.save(newSuggestion);
		
		if(savedSuggestion!=null) {
			
			String message = emailSender.sendSuggestion(savedSuggestion);
			
			if(message!=null) {
				return message;
			}
					
		}
		
		return "Something went wrong!! Try again.";
	}
	
}