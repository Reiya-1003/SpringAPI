package com.reactjava.youtubesystem.repository;


import org.springframework.stereotype.Repository;

import com.reactjava.youtubesystem.models.App;

import org.springframework.data.jpa.repository.JpaRepository;

@Repository
public interface AppRepository extends JpaRepository<App,Integer> {
}
