package com.sanfrench.demo;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.provisioning.InMemoryUserDetailsManager;

@Configuration
@EnableWebSecurity
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		//Projenin güvenlik alanı.Erişim kısıtlaması
		http
			.authorizeRequests()
				.antMatchers("/**/favicon.ico","/css/**","/js/**","/images/**","/webjars/**", "/", "/index.html**", "/sepet.html**", "/login", "/sepeti-onayla**").permitAll()
				//Herkes ulaşabilir. Static veri
				.anyRequest().authenticated()
				.and()
			.formLogin()
				.loginPage("/login")
				.loginProcessingUrl("/login")
				.defaultSuccessUrl("/dashboard",true)
				.failureUrl("/login.html?loginFailed=true")
				.permitAll()
				.and()
			.logout()
				.permitAll();
	}

	@Bean
	@Override
	public UserDetailsService userDetailsService() {
		UserDetails user =
			 User.withDefaultPasswordEncoder()
				.username("san.frenchh@gmail.com")
				.password("1234")
				.roles("USER")
				.build();

		return new InMemoryUserDetailsManager(user);
	}
}