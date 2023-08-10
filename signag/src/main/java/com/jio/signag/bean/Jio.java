package com.jio.signag.bean;

import javax.persistence.Entity;

import javax.persistence.Id;

@Entity
public class Jio {

	@Id
	private String serialNo;
	private String type;
	private String path;
	private String status;
	private String version;
	
	public Jio(String serialNo, String type, String path, String status,String version) {
		super();
		this.serialNo = serialNo;
		this.type = type;
		this.path = path;
		this.status = status;
		this.version=version;
	}
	public Jio() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getSerialNo() {
		return serialNo;
	}
	public void setSerialNo(String serialNo) {
		this.serialNo = serialNo;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
	public String getVersion() {
		return version;
	}
	public void setVersion(String version) {
		this.version = version;
	}
	@Override
	public String toString() {
		return "Jio [serialNo=" + serialNo + ", type=" + type + ", path=" + path + ", status=" + status + ", version="
				+ version + "]";
	}
	
	
	
	
	}