package com.reactjava.youtubesystem.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.reactjava.youtubesystem.models.App;
import com.reactjava.youtubesystem.services.AppService;

@RestController
@RequestMapping("/app")
@CrossOrigin
public class AppController {
	@Autowired
	private AppService appService;
	
	@PostMapping("/add")
	public String add(@RequestBody App app) {
		appService.saveApp(app);
		return "added";
	}
	
	@GetMapping("/getAll")
	public List<App> getAllApps(){
		return appService.getAllApps();
	}

}
