package spring.vojin.springdemo;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

public class HelloWorldController {
	
	
	@RequestMapping("/showForm")
	public String showForm()
	{
		
		return "helloworld-form";
	}
	
	@RequestMapping("/processForm")
	public String processForm()
	{
		
		return "helloworld";
	}

	
	// need a controller method to read form data
	// add data to the model
	
	@RequestMapping("/processFormVersion2")
	public String letsShoutDude(@RequestParam("studentName") String theName, Model model)
	{
	
		
		
		//convert data to all caps
		
		theName = theName.toUpperCase();
		
		// create the message
		String result = "Hey "+theName;
		
		// add message to the model
		
		model.addAttribute("message",result);
		
		return "helloworld";
	}
	
	

	@RequestMapping("/processFormVersion3")
	public String processFormVersion3(HttpServletRequest request, Model model)
	{
		//read requset parameter from html form
		String theName = request.getParameter("studentName");
		
		
		
		//convert data to all caps
		
		theName = theName.toUpperCase();
		
		// create the message
		String result = "Yo "+theName;
		
		// add message to the model
		
		model.addAttribute("message",result);
		
		return "helloworld";
	}
	
	
	
	
	
	
	
	
	
	
	
}
