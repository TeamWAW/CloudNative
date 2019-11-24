package com.joy.cd.samplerest.service.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/")
public class TestController {
	
	@RequestMapping(path="invoke",method=RequestMethod.GET)
	public String serviceMethod(){
		return "service Invoked";
	}

}
