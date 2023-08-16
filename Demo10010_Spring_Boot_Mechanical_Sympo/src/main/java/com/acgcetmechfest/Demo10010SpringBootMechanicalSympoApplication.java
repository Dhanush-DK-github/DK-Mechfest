package com.acgcetmechfest;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

import com.acgcetmechfest.entity.Suggestion;

@SpringBootApplication(scanBasePackages = "com.acgcetmechfest")
public class Demo10010SpringBootMechanicalSympoApplication {

	public static void main(String[] args) {
		SpringApplication.run(Demo10010SpringBootMechanicalSympoApplication.class, args);
		System.out.println("Hii");
	}
	
	@GetMapping(value = {"/", "/home"})
	public String showHomePage() {
		System.out.println("hello");
		
		return "home";
	}

}
