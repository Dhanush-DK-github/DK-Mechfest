package com.acgcetmechfest;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

@SpringBootApplication(scanBasePackages = "com.acgcetmechfest")
@EnableWebMvc
public class Demo10010SpringBootMechanicalSympoApplication {

	public static void main(String[] args) {
		SpringApplication.run(Demo10010SpringBootMechanicalSympoApplication.class, args);
		System.out.println("Hii");
	}

}
