package com.reactjava.youtubesystem.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.reactjava.youtubesystem.models.App;
import com.reactjava.youtubesystem.repository.AppRepository;

@Service
public class AppServiceImpl implements AppService {
 
	
	@Autowired
	private AppRepository appRepository;
	@Override
	public App saveApp(App app) {
		return appRepository.save(app);
	}
	@Override
	public List<App> getAllApps(){
		return appRepository.findAll();
	}
}
