package com.jio.signag.service;

import java.util.List;
import org.springframework.stereotype.Service;

import com.jio.signag.bean.Jio;


public interface JioService {
	public void save(Jio jio);
	public void deleteById(String id);
	public List<Jio> findAll();
	public Jio findById(String id);
	//public String generateSerialId();
	

}
