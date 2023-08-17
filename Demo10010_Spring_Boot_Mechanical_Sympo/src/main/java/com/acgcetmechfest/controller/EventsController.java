package com.acgcetmechfest.controller;

import java.util.*;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.acgcetmechfest.entity.Suggestion;

@Controller
@RequestMapping(value = {"/events/Fuel", "/events/Shackles"}, method = RequestMethod.GET)
public class EventsController {

	@GetMapping(value = "/Paper_Presentation")
	public String showPPTEventPage(Model model, @ModelAttribute("message") String message) {
		
		model.addAttribute("message", message);
		
		model.addAttribute("suggestion", new Suggestion());
		
		return "events/Paper_Presentation";
	}
	
	@GetMapping(value = "/CAD_Modelling")
	public String showCADEventPage(Model model, @ModelAttribute("message") String message) {
		
		model.addAttribute("message", message);
		
		model.addAttribute("suggestion", new Suggestion());
		
		return "events/CAD_Modelling";
	}
	
	@GetMapping(value = "/Inquizitive")
	public String showQuizEventPage(Model model, @ModelAttribute("message") String message) {
		
		model.addAttribute("message", message);
		
		model.addAttribute("suggestion", new Suggestion());
		
		return "events/Inquizitive";
	}
	
	@GetMapping(value = "/Welding")
	public String showWeldingEventPage(Model model, @ModelAttribute("message") String message) {
		
		model.addAttribute("message", message);
		
		model.addAttribute("suggestion", new Suggestion());
		
		return "events/Welding";
	}
	
	@GetMapping(value = "/RC_Car")
	public String showRC_CarEventPage(Model model, @ModelAttribute("message") String message) {
		
		model.addAttribute("message", message);
		
		model.addAttribute("suggestion", new Suggestion());
		
		return "events/RC_Car";
	}
	
	@GetMapping(value = "/Water_Rocket")
	public String showAquaFlyEventPage(Model model, @ModelAttribute("message") String message) {
		
		model.addAttribute("message", message);
		
		model.addAttribute("suggestion", new Suggestion());
		
		return "events/Water_Rocket";
	}
	
	@GetMapping(value = "/Casting")
	public String showCastingEventPage(Model model, @ModelAttribute("message") String message) {
		
		model.addAttribute("message", message);
		
		model.addAttribute("suggestion", new Suggestion());
		
		return "events/Casting";
	}
	
	@GetMapping(value = "/Assemble_Dismantle")
	public String showAssembleDismantleEventPage(Model model, @ModelAttribute("message") String message) {
		
		model.addAttribute("message", message);
		
		model.addAttribute("suggestion", new Suggestion());
		
		return "events/Assemble_Dismantle";
	}
	
	@GetMapping(value = "/Scrap_Master")
	public String showScrapMasterEventPage(Model model, @ModelAttribute("message") String message) {
		
		model.addAttribute("message", message);
		
		model.addAttribute("suggestion", new Suggestion());
		
		return "events/Scrap_Master";
	}
	
	@GetMapping(value = "/Flat_Boat")
	public String showFlatBoatEventPage(Model model, @ModelAttribute("message") String message) {
		
		model.addAttribute("message", message);
		
		model.addAttribute("suggestion", new Suggestion());
		
		return "events/Flat_Boat";
	}
	
}
