package com.acgcetmechfest.configuration;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

@Configuration
public class MyConfiguration {
	
	@Bean
	public InternalResourceViewResolver jspViewResolver() {
	    InternalResourceViewResolver resolver= new InternalResourceViewResolver();
	    resolver.setPrefix("/pages/");
	    resolver.setSuffix(".jsp");
	    return resolver;
	}  

}
