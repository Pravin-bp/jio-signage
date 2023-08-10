package com.jio.signag.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.jio.signag.bean.Jio;


@Repository
public interface JioRepository extends JpaRepository<Jio, String> {
	//@Query("select count(id) from Doctor")
	//public Long findMaxdoctorId();
//}{

}
