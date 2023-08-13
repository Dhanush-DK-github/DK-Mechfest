package com.acgcetmechfest.service;

import java.io.UnsupportedEncodingException;
import java.util.Iterator;
import java.util.List;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import javax.swing.text.html.HTML;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

import com.acgcetmechfest.entity.Registration;
import com.acgcetmechfest.entity.Student;
import com.acgcetmechfest.entity.Suggestion;

@Service
public class EmailSenderService {
	
	@Autowired
	private JavaMailSender mailSender;

	
	public void sendEmail(Registration savedRegistration) {
			
		String fromAddress = "mechfest.2024@gmail.com";
		String fromHeader= "MECHFEST";
		String[] toAddress = getToAddresses(savedRegistration.getStudents());	
		String ccAddress = "mdhanush1999@gmail.com";
		String subject = "MECHFEST - Successful Registration";
		String body = createBody(savedRegistration);
			
//			SimpleMailMessage message = new SimpleMailMessage();
			
		send (fromAddress, fromHeader, toAddress, ccAddress, subject, body);
			
	}

	public String[] getToAddresses(List<Student> students) {
        
		String[] emailIds = new String[students.size()];
		
		Iterator<Student> itr = students.iterator();
		
		int i=0;
        
        while (itr.hasNext())
        {
            Student student = itr.next();
            emailIds[i] = (student.getEmailId());
            i++;
        }
        return emailIds;
	}
	
	public String createBody(Registration savedRegistration) {
		
		String body = "<h3><b>Hi Amigo,</b></h3><p>Thanks for registering in <b>MECHFEST</b>.<br><br>Your registration for the <b>"+savedRegistration.getType()+": "+savedRegistration.getName()+"</b> is successful. <b>Registration ID: "+savedRegistration.getRegistrationId()+"</b>.<br><br>Kindly show this Registration ID or this Email to the workdesk person available at that "+savedRegistration.getType()+".<br><br>If any queries, kindly mail to <a href=\"mailto:mdhanush1999@gmail.com\">mdhanush1999@gmail.com</a>.<br><br></p>";
		
		body+=	"<p style=\"font-size: 17px;\"><b>Registration ID:</b>"+" "+savedRegistration.getRegistrationId()+"<br><b>"+savedRegistration.getType()+": </b>"+savedRegistration.getName()+"<br><b>No of Participants:</b>"+" "+savedRegistration.getStudents().size()+"<br><b>Participant Names:</b>"+" "+getStudentNames(savedRegistration.getStudents())+"</p><br><p><i>Thanks and Regards,<br>Mechasso Team<br>ACCET College<br>Email: mechasso@gmail.com</i></p>";

		return body;
	}

	public String getStudentNames(List<Student> students) {
		
		String names = "";
		
		Iterator<Student> itr = students.iterator();
        
        while (itr.hasNext())
        {
            Student student = itr.next();
            names+= student.getName();
            if(itr.hasNext())
            	names+=", ";
        }
        return names;
	}
	
	public String sendSuggestion(Suggestion newSuggestion) {
		
		String fromAddress = newSuggestion.getEmailId();
		String fromHeader= "MECHFEST Suggestion";
		String[] toAddress = new String[] {"mechfest.2024@gmail.com"};
		String ccAddress = "mdhanush1999@gmail.com";
		String subject = "MECHFEST - Suggestion from "+newSuggestion.getName().toUpperCase();
		String body = "Name: "+newSuggestion.getName();
		body+="<br>Mobile No: "+newSuggestion.getMobileNo();
		body+="<br>Email ID: "+newSuggestion.getEmailId();
		body+="<br>Suggestion Message: "+newSuggestion.getMessage();
		
		String successMessage = send (fromAddress, fromHeader, toAddress, ccAddress, subject, body);
		
		if(successMessage.equals("Mail sent successfully")) {
			return "Your Suggestion Submitted Successfully";
		}
		else
			return null;
		
	}
	
	public String send(String fromAddress, String fromHeader, String[] toAddress, String ccAddress, String subject,
			String body) {
		
		try {
			
			MimeMessage message = mailSender.createMimeMessage();
			MimeMessageHelper helper = new MimeMessageHelper(message);
			
			helper.setFrom(fromAddress, fromHeader);
			helper.setTo(toAddress);
			helper.setCc(ccAddress);
			helper.setSubject(subject);
			helper.setText(body, true);
			
			mailSender.send(message);
			
			System.out.println("Mail sent successfully");
			
			return "Mail sent successfully";
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return null;
		
	}
	
}
