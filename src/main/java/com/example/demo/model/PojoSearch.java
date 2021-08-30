package com.example.demo.model;

public class PojoSearch {
	
	private String datefrom;
    private String dateto;
    private Long user_id;
    
	public String getDatefrom() {
		return datefrom;
	}
	public void setDatefrom(String datefrom) {
		this.datefrom = datefrom;
	}
	public String getDateto() {
		return dateto;
	}
	public void setDateto(String dateto) {
		this.dateto = dateto;
	}
	public Long getUser_id() {
		return user_id;
	}
	public void setUser_id(Long user_id) {
		this.user_id = user_id;
	}
	
	@Override
	public String toString() {
		return "PojoSearch [datefrom=" + datefrom + ", dateto=" + dateto + ", user_id=" + user_id + "]";
	}
    
    
}
