package com.example.demo.model;

import java.util.Calendar;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.*;

import org.springframework.data.annotation.CreatedDate;

@Entity
@Table(name = "roles")
//@EntityListeners(AuditingEntityListener.class)
public class Role {
    @Id
    @Column(name = "id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    
    @Basic
    @Column(length=100, nullable=false, unique=true)
    private String name;
    
    @Lob 
    @Column(name="description", length=512)
    private String description;
    
    @Temporal(TemporalType.TIMESTAMP)
    @Column(updatable=false)
    @CreatedDate
    private Date dateCreation;
    
    @ManyToMany(cascade = CascadeType.ALL, fetch = FetchType.EAGER)
    @JoinTable(
            name = "roles_permissions",
            joinColumns = @JoinColumn(name = "role_id"),
            inverseJoinColumns = @JoinColumn(name = "permission_id")
            )
    private Set<Permission> permissions = new HashSet<>();
    
//    @ManyToMany(mappedBy = "roles", fetch = FetchType.LAZY, cascade = CascadeType.ALL)
//    private final Set<User> users = new HashSet<>();
//    
	public Set<Permission> getPermissions() {
		return permissions;
	}

	public void setPermissions(Set<Permission> permissions) {
		this.permissions = permissions;
	}

	public Long getId() {
		return id;
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
	
	public Date getDateCreation() {
		return dateCreation;
	}

	public void setDateCreation(Date dateCreation) {
		this.dateCreation = dateCreation;
	}
	
	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	@Override
	public String toString() {
		return "Role [id=" + id + ", name=" + name + ", description=" + description + ", dateCreation=" + dateCreation
				+ ", permissions=" + permissions + "]";
	}
    
	public boolean hasPermission(Permission perm) {
    	Set<Permission> perms = this.permissions;
    	for (Permission elt : perms) 
    		if(elt.getId() == perm.getId()) 
            	return true;

    	return false;
    }
    
     
    // remaining getters and setters   
}