package com.myprofile.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;

@Controller
@RequestMapping(value="startController")
public class MyProfileController {
	public static final String PROFILE_NAME = "Prasanth Selvaraj";
	public static final String LEFT_ALPHA = "P";
	public static final String RIGHT_ALFA ="S";
	@RequestMapping(value="/start", method=RequestMethod.GET)
	public ModelAndView profileList(@RequestParam(required=false)String userName) {
		
		String profLabel= "Experienced Full Stack Developer with a demonstrated history of working in enterprise resource planning consumer products and order\r\n" + 
				"to delivery of mobility systems. Specializing in back-end and front-end development with <b> 3 years </b> of experience in analysis, design, \r\n" + 
				"developmment, testing and implementation of various internet based applications.Seeking assignments to work in a creative and \r\n" + 
				"challenging environment using cutting edge technologies where I can constantly improve my technical and analytical abilities.";
		Map<String, String> resultMap = new HashMap();
		ModelAndView mvObject = new ModelAndView("ProfileBase");
		resultMap.put("name", PROFILE_NAME);
		resultMap.put("leftAlpha", LEFT_ALPHA);
		resultMap.put("rightAlpha", RIGHT_ALFA);
		resultMap.put("professional", "Professional Summmary");
		resultMap.put("experience", "Skill Set");
		resultMap.put("employment", "Employment Summary");
		resultMap.put("profStatement", profLabel);
		resultMap.put("backend", "Backend");
		resultMap.put("frontEnd", "Frontend");
		resultMap.put("frameWork", "Framework");
		resultMap.put("server", "Servers");
		resultMap.put("dataBase", "Database");
		resultMap.put("versionControl", "version control & integration tool");
		resultMap.put("ide", "IDE & Building Tool");
		resultMap.put("employmentSummaryOne","1.) worked under <b>Ivtl Infoview Technologies Pvt Ltd Chennai</b>, which provides best\r\n" + 
				"environment for innovation and business growth.");
		resultMap.put("employmentSummaryTwo","2.) Currently working under <b>Ford GBS Chennai</b>, which provides best\r\n" + 
				"environment for innovation and business growth.");
		resultMap.put("academicSummary","Completed Bachelor of Engineering in <b> Electronics and Communication Engineering </b> from <b>Sri Krishna College of Engineering and Technology</b> at Coimbatore in the year 2016 with " + 
				"91.1%.");
		resultMap.put("academic", "Academic Qualification");
		resultMap.put("project", "Project Summary \n" + "(Aug 2016 - Sep 2019)");
		resultMap.put("projectNameLabel", "Project Name: ");
		resultMap.put("companyNameLabel", "Company: ");
		resultMap.put("companyNamePara", "<b>Infoview Technologies</b>");
		resultMap.put("projectNamePara", "<b>HUE</b> (High Usability Enterprise)");
		resultMap.put("projectDespLabel", "Project Description: ");
		resultMap.put("projectDespPara", "HUE is an enterprise consumer product enriched with AI Works that reduce the\r\n" + 
				"burden and time for user Inputs and meets the business needs of customers in regions of <b>Human\r\n" + 
				"Resource, Supply Chain Management, Accounts and other management systems.</b>");
		resultMap.put("teamSizeLabel", "Team Size: ");
		resultMap.put("teamSizePara", "4");
		resultMap.put("profileLabel", "Profile: ");
		resultMap.put("profilePara", "Team Member (Developer)");
		resultMap.put("hiddenValue", "false");
		mvObject.addAllObjects(resultMap);
		return mvObject;
	}
	
	@RequestMapping(value="/skillset", method=RequestMethod.POST)
	@ResponseBody
	public String skillSet(@RequestBody String skillNumber) {
		Gson gsonData = new Gson();
		String numValue = gsonData.fromJson(skillNumber, String.class);
		Map<String, List<String>> resultMap = new HashMap();

		switch(Integer.valueOf(numValue)) {
		case 1:
			 resultMap.put("skills", Arrays.asList("JAVA 8"));
			 resultMap.put("percentage", Arrays.asList("80%"));
		     break;
		     
		case 2:
			 resultMap.put("skills", Arrays.asList("HTML 5", "JS", "CSS", "AJAX", "JQuery"));
			 resultMap.put("percentage", Arrays.asList("50%", "60%", "50%", "60%", "30%"));
		     break;
		case 3:
			resultMap.put("skills", Arrays.asList("Spring MVC"));
			resultMap.put("percentage", Arrays.asList("80%"));
			break;
		case 4:
			resultMap.put("skills", Arrays.asList("Tomcat 8.0", "IBM Liberty server"));
			resultMap.put("percentage", Arrays.asList("80%", "50%"));
			break;
		case 5:
			resultMap.put("skills", Arrays.asList("MySQL"));
			resultMap.put("percentage", Arrays.asList("60%"));
			break;
		case 6:
			resultMap.put("skills", Arrays.asList("GitLab", "GitHub", "Jenkins"));
			resultMap.put("percentage", Arrays.asList("70%", "80%", "40%"));
			break;
		case 7:
			resultMap.put("skills", Arrays.asList("Eclipse", "Maven", "Gradle"));
			resultMap.put("percentage", Arrays.asList("100%", "90%", "50%"));
			break;
		}
		return gsonData.toJson(resultMap);
	}
	
	@RequestMapping(value="/pagetwo", method=RequestMethod.GET)
	public ModelAndView pagetwo(@RequestParam(required=false)String userName) {
		Map<String, String> resultMap = new HashMap();
		ModelAndView mvObject = new ModelAndView("ProfileBase");
		resultMap.put("name", PROFILE_NAME);
		resultMap.put("leftAlpha", LEFT_ALPHA);
		resultMap.put("rightAlpha", RIGHT_ALFA);
		resultMap.put("hiddenValue", "true");
		resultMap.put("technologyLabel", "Technologies: ");
		resultMap.put("techLableOne", "Front End (Java Script, XML, CSS, AJAX)");
		resultMap.put("techLableTwo", "Back End (JAVA 8)");
		resultMap.put("dbLabel", "Data Base: ");
		resultMap.put("db", "MySql (RDBMS)");
		resultMap.put("responseLabel", "Responsibility: ");
		resultMap.put("statementOne", "Developing web application ERP product based on <b>Spring MVC Frame work</b> using the above mentioned technologies.");
		resultMap.put("statementTwo", "Perform code reviews based on defined standards and verified with the code review tools such as <b>Sonar-Cube</b> and <b>Sonar-Lints</b> (Code review tools).");
		resultMap.put("statementThree", "Worked with team of 4 coordinated to merge and manage codes under version control system <b>(GitLab)</b>.");
		resultMap.put("statementFour", "Troubleshoot and resolved more than 300 Critical and UI bugs raised by testing teams to deliver flawless product to customers.");
		mvObject.addAllObjects(resultMap);
		return mvObject;
	}
	
}
