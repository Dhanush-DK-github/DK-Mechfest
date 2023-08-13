package com.acgcetmechfest.controller;

import java.util.*;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.acgcetmechfest.entity.Suggestion;

@Controller
public class EventsController {

	@GetMapping(value = {"/events/Fuel/Paper_Presentation", "/events/Shackles/Paper_Presentation"})
	public String showPPTEventPage(Model model, @ModelAttribute("message") String message) {
		
		model.addAttribute("message", message);
		
		model.addAttribute("suggestion", new Suggestion());
		
		return "events/Paper_Presentation";
	}
	
	@GetMapping(value = {"/events/Fuel/CAD_Modelling", "/events/Shackles/CAD_Modelling"})
	public String showCADEventPage(Model model, @ModelAttribute("message") String message) {
		
		model.addAttribute("message", message);
		
		model.addAttribute("suggestion", new Suggestion());
		
		return "events/CAD_Modelling";
	}
	
	@GetMapping(value = {"/events/Fuel/Inquizitive", "/events/Shackles/Inquizitive"})
	public String showQuizEventPage(Model model, @ModelAttribute("message") String message) {
		
		model.addAttribute("message", message);
		
		model.addAttribute("suggestion", new Suggestion());
		
		return "events/Inquizitive";
	}
	
	@GetMapping(value = {"/events/Fuel/Welding", "/events/Shackles/Welding"})
	public String showWeldingEventPage(Model model, @ModelAttribute("message") String message) {
		
		model.addAttribute("message", message);
		
		model.addAttribute("suggestion", new Suggestion());
		
		return "events/Welding";
	}
	
	@GetMapping(value = {"/events/Fuel/RC_Car"})
	public String showRC_CarEventPage(Model model, @ModelAttribute("message") String message) {
		
		model.addAttribute("message", message);
		
		model.addAttribute("suggestion", new Suggestion());
		
		return "events/RC_Car";
	}
	
	@GetMapping(value = {"/events/Fuel/Water_Rocket", "/events/Shackles/Water_Rocket"})
	public String showAquaFlyEventPage(Model model, @ModelAttribute("message") String message) {
		
		model.addAttribute("message", message);
		
		model.addAttribute("suggestion", new Suggestion());
		
		return "events/Water_Rocket";
	}
	
	@GetMapping(value = {"/events/Fuel/Casting", "/events/Shackles/Casting"})
	public String showCastingEventPage(Model model, @ModelAttribute("message") String message) {
		
		model.addAttribute("message", message);
		
		model.addAttribute("suggestion", new Suggestion());
		
		return "events/Casting";
	}
	
	@GetMapping(value = {"/events/Fuel/Assemble_Dismantle", "/events/Shackles/Assemble_Dismantle"})
	public String showAssembleDismantleEventPage(Model model, @ModelAttribute("message") String message) {
		
		model.addAttribute("message", message);
		
		model.addAttribute("suggestion", new Suggestion());
		
		return "events/Assemble_Dismantle";
	}
	
	@GetMapping(value = {"/events/Fuel/Scrap_Master"})
	public String showScrapMasterEventPage(Model model, @ModelAttribute("message") String message) {
		
		model.addAttribute("message", message);
		
		model.addAttribute("suggestion", new Suggestion());
		
		return "events/Scrap_Master";
	}
	
	@GetMapping(value = {"/events/Fuel/Flat_Boat"})
	public String showFlatBoatEventPage(Model model, @ModelAttribute("message") String message) {
		
		model.addAttribute("message", message);
		
		model.addAttribute("suggestion", new Suggestion());
		
		return "events/Flat_Boat";
	}
	
}
