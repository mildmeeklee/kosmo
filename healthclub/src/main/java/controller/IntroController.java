package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class IntroController {
	@RequestMapping(value="introcompanyIntro.do",method = RequestMethod.GET)
	public String companyIntro(){
		return "intro/companyIntro";
	}
	@RequestMapping(value="introhealthProgram.do",method = RequestMethod.GET)
	public String healthProgram(){
		return "intro/healthProgram";
	}
	@RequestMapping(value="introprogramTeacher.do",method = RequestMethod.GET)
	public String programTeacher(){
		return "intro/programTeacher";
	}
	@RequestMapping(value="introfacility.do",method = RequestMethod.GET)
	public String facility(){
		return "intro/facility";
	}	
	@RequestMapping(value="introalianceBusiness.do",method = RequestMethod.GET)
	public String alianceBusiness(){
		return "intro/allianceBusiness";
		         
	}
}
