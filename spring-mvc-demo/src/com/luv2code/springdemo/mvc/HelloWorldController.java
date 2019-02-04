package com.luv2code.springdemo.mvc;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping("/hello")
public class HelloWorldController {
	
	//need a controller method to show initial form
	
	@RequestMapping("/showForm")
	public String showForm(){
		System.out.println("Test");
		return "helloworld-form";
	}
	
	//need to controller method to process the html form
	
	@RequestMapping("/processForm")
	public String processForm(){
		 return "helloworld";
	}
	
	//new controller to read data and data to the model
	
	@RequestMapping("/processFormVersionTwo")
	public String lestsShoutDude(HttpServletRequest request, Model model){
		
		//read the request parameter from the HTML form
		String theName = request.getParameter("studentName");
		
		//convert the data to all caps
		theName = theName.toUpperCase();
		
		//create the message
		String result = "Yo! " + theName ;
		
		//add message to the model
		
		model.addAttribute("message", result);
		
		
		return "helloworld";
	}
	
	@RequestMapping("/processFormVersionThree")
	public String testRequestParam(
			@RequestParam("studentName") String theName, 
			Model model){
		
		//convert the data to all caps
		theName = theName.toUpperCase();
		
		//create the message
		String result = "Hey my friend " + theName ;
		
		//add message to the model	
		model.addAttribute("message", result);
		
		
		return "helloworld";
	}

}
