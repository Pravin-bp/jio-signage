package com.jio.signag.service;


import java.util.List;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jio.signag.bean.Jio;
import com.jio.signag.repository.JioRepository;

@Service
public class JioServiceImpl implements JioService{
	@Autowired
	private JioRepository repository;

	@Override
	public void save(Jio jio) {
		repository.save(jio);
		
	}

	@Override
	public void deleteById(String id) {
		repository.deleteById(id);
		
	}

	@Override
	public List<Jio> findAll() {
		return repository.findAll();
	}

	@Override
	public Jio findById(String id) {
		return repository.getById(id);
	}

	
	

}
