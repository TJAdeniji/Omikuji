package com.omikuji.controllers;

import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class OmikujiController {
	
	@RequestMapping("/")
	public String launch() {
		return "redirect:/omikuji";
	}
	
	@RequestMapping("/omikuji")
	public String index(HttpSession session) {
		return "index.jsp";
	}
	
	@PostMapping("/generate")
	public String generateOmikuji(HttpSession session, @RequestParam(value="number") Integer number, @RequestParam(value="city") String city, @RequestParam(value="name") String name, @RequestParam(value="hobby") String hobby, @RequestParam(value="lThing") String lThing, @RequestParam(value="nice") String nice){
		session.setAttribute("number", number);
		session.setAttribute("city", city);
		session.setAttribute("name", name);
		session.setAttribute("hobby", hobby);
		session.setAttribute("lThing", lThing);
		session.setAttribute("nice", nice);
		
		return "redirect:/omikuji/show";
	}
	
	@RequestMapping("/omikuji/show")
	public String showOmikuji() {
		
		return "showOmikuji.jsp";
	}

	
	
}
