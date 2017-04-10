package com.example.config;

//import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
//import org.springframework.security.core.userdetails.UserDetailsService;

@Configuration
public class SecurityConfig extends WebSecurityConfigurerAdapter {
	
//	@Autowired
//	UserDetailsService userDetailsService;
	
	@Override
	protected void configure(AuthenticationManagerBuilder auth) throws Exception {
		/*
		 * 인증
		 */
		auth.inMemoryAuthentication()
				.withUser("admin").password("1234").roles("ADMIN")
				.and()
				.withUser("user").password("1234").roles("USER");
//		auth.userDetailsService(userDetailsService);
	}
	
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		/*
		 * 권한
		 */
		http.csrf().disable()
			.authorizeRequests()
				.antMatchers("/country/**").hasRole("ADMIN") //양식 - .antMatchers("/경로/경로/**").hasRole("권한")
//				.antMatchers("/city/**").hasRole("ADMIN")
				.antMatchers("/city/register").hasRole("ADMIN")
				.antMatchers("/city/modify/**").hasRole("ADMIN")
				.antMatchers("/city/unregister/**").hasRole("ADMIN")
//				.antMatchers("/**").permitAll()
			.and()
			.formLogin()
				.loginPage("/login")
				.permitAll();
		
	}

}
