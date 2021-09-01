package com.example.demo.model;

import java.io.Serializable;
import java.util.*;

import javax.persistence.*;

import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
 
@Entity
@Table(name = "users")
@EntityListeners(AuditingEntityListener.class)
@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
public class User implements Serializable {
 
    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    
    @Column(length=30, nullable=false)
    private String name;
    
    @Column(length=30, nullable=false, unique=true)
    private String username;
  
    //(fetch = FetchType.LAZY)
    @Column(length=255, nullable=false)
    @JsonIgnore
    private String password;
    
    //@Basic
    @Column(nullable=false)
    private boolean enabled;
    
    @JsonFormat(pattern="yyyy-MM-dd HH:mm:ss")
    @Temporal(TemporalType.TIMESTAMP)
    @Column(updatable=false)
    @CreatedDate
    private Date dateCreation;
    
    @JsonIgnore
    @OneToMany(mappedBy = "user", fetch = FetchType.EAGER)
    private Set<UserRole> userRoles = new HashSet<>();

    /*@ManyToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    @JoinTable(
            name = "users_roles",
            joinColumns = @JoinColumn(name = "user_id"),
            inverseJoinColumns = @JoinColumn(name = "role_id")
            )
    private Set<Role> roles = new HashSet<>();*/

    	
    
	public Long getId() {
		return id;
	}

	public Set<UserRole> getUserRoles() {
		return userRoles;
	}

	public void setUserRoles(Set<UserRole> userRoles) {
		this.userRoles = userRoles;
	}

	public void setId(Long id) {
		this.id = id;
	}
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public boolean isEnabled() {
		return enabled;
	}

	public void setEnabled(boolean enabled) {
		this.enabled = enabled;
	}

	public Date getDateCreation() {
		return dateCreation;
	}

	public void setDateCreation(Date dateCreation) {
		this.dateCreation = dateCreation;
	}

	/*public Set<Role> getRoles() {
		return roles;
	}

	public void setRoles(Set<Role> roles) {
		this.roles = roles;
	}*/

	@Override
	public String toString() {
		return "User [id=" + id + ", name=" + name + ", username=" + username + ", password=" + password + ", enabled="
				+ enabled + ", dateCreation=" + dateCreation + ", userRoles=" + userRoles + "]";
	}
 
    public boolean hasRole(Role role) {
    	Set<UserRole> userRoles = this.userRoles;
    	for (UserRole elt : userRoles) 
    		if(elt.getRole().getId() == role.getId()) 
            	return true;

    	return false;
    }
    
    @JsonProperty("roles")
    public Set<Role> roles() {
    	Set<Role> roles = new HashSet<Role>();
    	Set<UserRole> userRoles = this.userRoles;
    	for (UserRole elt : userRoles) 
    		roles.add(elt.getRole());

    	return roles;
    }
    
    
}