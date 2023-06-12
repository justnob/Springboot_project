package com.amarnath_sah.todo_application.hello;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class MassageController {
	
	@GetMapping("say")
	@ResponseBody
	public String GetMassage()
	{
		return "hello my name is Amarnath sah";
		
	}
	
	@GetMapping("say-html")
	@ResponseBody
	public String GetHtmlMassage()
	{
		StringBuffer sb = new StringBuffer();
		sb.append("<html>");
		sb.append("<head>");
		sb.append("<title>My todo application </title>");
		sb.append("</head>");
		sb.append("<body>");
		sb.append("<p>My application with body</p>");
		sb.append("</body>");
		sb.append("</html>");
		
		
		return sb.toString();
		
	}
	
	
	@RequestMapping("say-jsp")
	public String GetJspMassage()
	{
		return "sayHello";
		
	}
	
	
	

}
