package com.Abhinav.model;

public class Bug {
private int id;

private String bugname;
private String bugdetails;
private String employee;
 
public Bug(){
	
}
public Bug(int _id,String bn,String bd,String emp){
	id=_id;
	bugname=bn;
	bugdetails=bd;
	employee=emp;
}


public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}

public String getBugname() {
	return bugname;
}

public void setBugname(String bugname) {
	this.bugname = bugname;
}

public String getBugdetails() {
	return bugdetails;
}

public void setBugdetails(String bugdetails) {
	this.bugdetails = bugdetails;
}

public String getEmployee() {
	return employee;
}

public void setEmployee(String employee) {
	this.employee = employee;
}
@Override
public String toString() {
	return "Bug [id=" + id + ", bugname=" + bugname + ", bugdetails=" + bugdetails + ", employee=" + employee + "]";
}

}
