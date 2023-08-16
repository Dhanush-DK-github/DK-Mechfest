package com.acgcetmechfest.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;

import javax.imageio.spi.RegisterableService;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.View;
import org.springframework.web.servlet.ViewResolver;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.support.RequestContextUtils;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

import com.acgcetmechfest.entity.Registration;
import com.acgcetmechfest.entity.Student;
import com.acgcetmechfest.entity.Suggestion;
import com.acgcetmechfest.service.GetEvent_WorkshopName;
import com.acgcetmechfest.service.RegistrationService;

@Controller
public class MainController {
	
	@Autowired
	private RegistrationService registrationService;
	@Autowired
	private GetEvent_WorkshopName getName;
	
	@GetMapping(value = {"/", "/home"})
	public String showHomePage(Model model, @ModelAttribute("message") String message) {
		System.out.println("hello");
		model.addAttribute("message", message);
		
		model.addAttribute("suggestion", new Suggestion());
		
		return "/pages/home.jsp";
	}
	
	@GetMapping(value = {"/error"})
	public String showErrorPage() {
		
		return "error";
	}
	
	@GetMapping(value = "/about")
	public String showAboutPage(Model model, @ModelAttribute("message") String message) {
		
		model.addAttribute("message", message);
		
		model.addAttribute("suggestion", new Suggestion());
		
		return "about";
	}
	
//	@GetMapping(value = "/about#mechfest")
//	public String showAboutPageMechFest() {
//		return "redirect:/about#mechfest";
//	}
	
	@GetMapping(value = "/events")
	public String showEventPage(Model model, @ModelAttribute("message") String message) {
		
		model.addAttribute("message", message);
		
		model.addAttribute("suggestion", new Suggestion());
		
		return "events";
	}
	
	@GetMapping(value = "/workshop")
	public String showWorkshopPage(Model model, @ModelAttribute("message") String message) {
		
		model.addAttribute("message", message);
		
		model.addAttribute("suggestion", new Suggestion());
		
		return "workshop";
	}
	
	@GetMapping(value = "/contact")
	public String showContactPage(Model model, @ModelAttribute("message") String message) {
		
		model.addAttribute("message", message);
		
		model.addAttribute("suggestion", new Suggestion());
		
		return "contact";
	}
	
	@GetMapping(value = "/register")
	public String showRegistrationPage(Model model, @ModelAttribute("message") String message, @ModelAttribute("typeName") String typeName) {
		
		Registration newRegistration = new Registration();
		
		if(typeName!=null||typeName!="") {
			model.addAttribute("typeName", typeName);
		}
		model.addAttribute("registration", newRegistration);
		
		model.addAttribute("message", message);
		
		model.addAttribute("suggestion", new Suggestion());
		
		return "registration";
	}
	
	@GetMapping("/events/{sympo}/{event_Name}/register")
	public String showRegistrationPageForSpecificEvents(@PathVariable String sympo, @PathVariable String event_Name, Model model, RedirectAttributes redirectAttr) {
		
		String eventName = getName.getEventName(sympo, event_Name);
		
		if(eventName!=null) {
			
			redirectAttr.addFlashAttribute("type", sympo);
			if(eventName.equals("Assemble Dismantle")) {
				eventName = "Assemble and Dismantle";
			}
			redirectAttr.addFlashAttribute("typeName", eventName);
			
			return "redirect:/register";
		}
		
		return "redirect:/home";
	}
	
	@GetMapping("/workshop/{workshop_Name}/register")
	public String showRegistrationPageForSpecificWorkshop(@PathVariable String workshop_Name, Model model, RedirectAttributes redirectAttr) {
		
		String workshopName = getName.getWorkshopName(workshop_Name);
		
		if(workshopName!=null) {
			
			redirectAttr.addFlashAttribute("type", "Workshop");
			redirectAttr.addFlashAttribute("typeName", workshopName);
			
			return "redirect:/register";
		}
		
		return "redirect:/home";
	}
	
	@GetMapping("/{type}/register")
	public String showRegistrationPageForSympoAndWorkshop(@PathVariable String type, Model model, RedirectAttributes redirectAttr) {
		
		String typeExists = getName.getTypeName(type);
			
			if(typeExists!=null) {
				
				redirectAttr.addFlashAttribute("type", typeExists);
				
				Registration newRegistration = new Registration();

				model.addAttribute("registration", newRegistration);
				
				return "redirect:/register";
			}
			
		return "redirect:/home";
	}

	@PostMapping(value = "/saveRegistration")
	public String createNewRegistrationEntry(@ModelAttribute("registration") Registration newRegistration, RedirectAttributes redirectAttr) {
		
		System.out.println(newRegistration);
		
		String message = registrationService.addNewRegistration(newRegistration);
		
		redirectAttr.addFlashAttribute("message", message);
		
		if(message.contains("Successfully Registered")) {
			return "redirect:/home";
		}
		else {
			return "redirect:/register";
		}
	}
	
	@PostMapping(value = "/{page}/sendSuggestion")
	public String sendSuggestionForm(@PathVariable String page, @ModelAttribute("suggestion") Suggestion newSuggestion, RedirectAttributes redirectAttr) {
		
		System.out.println(newSuggestion);
		
		String message = registrationService.addNewSuggestion(newSuggestion);
		
		redirectAttr.addFlashAttribute("message", message);
		
		return "redirect:/"+page;
	}

	@PostMapping("/events/{sympo}/{page}/sendSuggestion")
	public String sendSuggestionFormForSpecificEvents(@PathVariable String sympo, @PathVariable String page, @ModelAttribute("suggestion") Suggestion newSuggestion, RedirectAttributes redirectAttr) {
		
		System.out.println(newSuggestion);
		
		String message = registrationService.addNewSuggestion(newSuggestion);
		
		redirectAttr.addFlashAttribute("message", message);
		
		return "redirect:/events/"+sympo+"/"+page;
	}
}
