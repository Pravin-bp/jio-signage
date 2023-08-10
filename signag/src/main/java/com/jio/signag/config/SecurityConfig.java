package com.jio.signag.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

import com.jio.signag.service.CryptouserService;

@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter{
	@Autowired
	private  EncoderConfig econfig;
	@Autowired
	private CryptouserService service;
		
	@Autowired
	@Override
	protected void configure(AuthenticationManagerBuilder authority) throws Exception {
		authority.userDetailsService(service).passwordEncoder(econfig.passwordEncoder());
	}
	@Override
	public void configure(HttpSecurity http) throws Exception {
		http.authorizeRequests().antMatchers("/register","/forget","/forgot","/change","/user").permitAll().anyRequest().authenticated().and().formLogin().loginPage("/loginpage")
		.failureUrl("/loginerror").loginProcessingUrl("/login")
		.permitAll().and().logout()
		.logoutSuccessUrl("/home");
	http.csrf().disable();
	}


}
