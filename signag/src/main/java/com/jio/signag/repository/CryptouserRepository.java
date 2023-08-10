package com.jio.signag.repository;

import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.jio.signag.bean.Cryptouser;

public interface CryptouserRepository extends JpaRepository<Cryptouser, String>{
	Optional<Cryptouser> findUserByUsername(String username);

}
