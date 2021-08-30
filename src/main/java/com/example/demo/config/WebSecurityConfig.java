package com.example.demo.config;

import org.springframework.context.annotation.*;
import org.springframework.security.authentication.dao.*;
import org.springframework.security.config.annotation.authentication.builders.*;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.*;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import com.example.demo.service.impl.UserDetailsServiceImpl;
 
@Configuration
@EnableWebSecurity
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {
 
    @Bean
    public UserDetailsService userDetailsService() {
        return new UserDetailsServiceImpl();
    }
     
    @Bean
    public BCryptPasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }
     
    @Bean
    public DaoAuthenticationProvider authenticationProvider() {
        DaoAuthenticationProvider authProvider = new DaoAuthenticationProvider();
        authProvider.setUserDetailsService(userDetailsService());
        authProvider.setPasswordEncoder(passwordEncoder());
         
        return authProvider;
    }
 
    @Override
    protected void configure(AuthenticationManagerBuilder auth) throws Exception {
        auth.authenticationProvider(authenticationProvider());
    }
 
    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.authorizeRequests()
            .antMatchers("/users").hasAnyAuthority("superadmin", "listing_user")
            .antMatchers("/create-user").hasAnyAuthority("superadmin", "create_user")
            .antMatchers("/desactive-user").hasAnyAuthority("superadmin", "enable_or_disable_user")
            .antMatchers("/details-user**").hasAnyAuthority("superadmin", "details_user")
            .antMatchers("/edit-user**").hasAnyAuthority("superadmin", "edit_user")
            .antMatchers("/roles").hasAnyAuthority("superadmin", "listing_roles")
            .antMatchers("/create-role").hasAnyAuthority("superadmin", "create_role")
            .antMatchers("/edit-role**").hasAnyAuthority("superadmin", "edit_role")
            .antMatchers("/details-role**").hasAnyAuthority("superadmin", "details_role")
            .antMatchers("/delete-role**").hasAnyAuthority("superadmin", "delete_role")
            .antMatchers("/permissions").hasAnyAuthority("superadmin", "listing_permissions")
            .antMatchers("/activities").hasAnyAuthority("superadmin","search_activities_users")
            .antMatchers("/send-mail").hasAnyAuthority("superadmin", "send_mail")
//            .antMatchers("/delete/**").hasAuthority("ADMIN")
            .anyRequest().authenticated()
            .and()
            .formLogin().permitAll()
            .and().csrf()
            .and()
            .logout().permitAll()
            .and()
            .exceptionHandling().accessDeniedPage("/access-denied")
            ;
    }
}