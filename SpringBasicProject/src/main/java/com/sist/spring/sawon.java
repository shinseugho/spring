package com.sist.spring;

public class sawon {
	
	private int sabun;
	private String name;
	private String dept;
	private sawon()
	{
		
	}
	
	public sawon(int sabun, String name, String dept) {
		this.sabun = sabun;
		this.name = name;
		this.dept = dept;
	}

	public int getSabun() {
		return sabun;
	}


	public void setSabun(int sabun) {
		this.sabun = sabun;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getDept() {
		return dept;
	}


	public void setDept(String dept) {
		this.dept = dept;
	}

	public void display()
	{
		System.out.println("sawon:display() Call...");
	}
}
