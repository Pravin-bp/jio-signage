package com.jio.signag.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.jio.signag.bean.Cryptouser;
import com.jio.signag.repository.CryptouserRepository;

@Service
public class CryptouserService implements UserDetailsService{
		@Autowired
		private CryptouserRepository repository;
		@Override
		public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException{
		    return repository.findById(username).get();
		}
		public void save(Cryptouser users) {
		    repository.save(users);
		}
		public Cryptouser find(String id) {
		    return repository.getById(id);
		}
		public List<Cryptouser> findId(String id) {
		    return repository.findAll();
		}
}
