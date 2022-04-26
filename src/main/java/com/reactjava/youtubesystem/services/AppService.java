package com.reactjava.youtubesystem.services;

import java.util.List;

import com.reactjava.youtubesystem.models.App;



public interface AppService {
	
	public App saveApp(App app);
	public List<App> getAllApps();

}
