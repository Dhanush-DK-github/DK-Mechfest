package com.acgcetmechfest.service;

import java.util.*;

import org.springframework.stereotype.Service;

@Service
public class GetEvent_WorkshopName {
	
	List<String> fuelEventsList = new ArrayList<String>();
	List<String> shacklesEventsList = new ArrayList<String>();
	List<String> workshopNameList = new ArrayList<String>();
	
	public GetEvent_WorkshopName() {
		
		String[] fuelEvents = {"Paper_Presentation", "CAD_Modelling", "Inquizitive", "Welding", "RC_Car", "Water_Rocket", "Casting", "Foundry", "Assemble_Dismantle", "Scrap_Master", "Flat_Boat"};
		fuelEventsList = Arrays.asList(fuelEvents);
		
		String[] shacklesEvents = {"Paper_Presentation", "CAD_Modelling", "Inquizitive", "Welding", "Water_Rocket", "Casting", "Foundry", "Assemble_Dismantle"};
		shacklesEventsList = Arrays.asList(shacklesEvents);
		
		String[] workshopName = {"Electric_Vehicle", "Mercedes_Engine_Diagnosis"};
		workshopNameList = Arrays.asList(workshopName);
	}

	public String getEventName(String sympo, String eventName) {
		
		if(eventName.equals("Casting")) {
			eventName = eventName.replace("Casting", "Foundry");
		}
		if(sympo.equals("Fuel")&&fuelEventsList.contains(eventName)) {
			
			return (eventName.replace("_", " "));
		}
		else if(sympo.equals("Shackles")&&shacklesEventsList.contains(eventName)) {
			return (eventName.replace("_", " "));
		}
		
		return null;
	}

	public String getTypeName(String type) {
		// TODO Auto-generated method stub
		if(type.equalsIgnoreCase("Fuel"))
			return "Fuel";
		else if(type.equalsIgnoreCase("Shackles"))
			return "Shackles";
		else if(type.equalsIgnoreCase("Workshop"))
			return "Workshop";
		
		return null;
	}

	public String getWorkshopName(String workshop_Name) {
		// TODO Auto-generated method stub
		if(workshopNameList.contains(workshop_Name)) {
			return (workshop_Name.replace("_", " "));
		}
		
		return null;
	}
	
	

}
