package com.sist.dao;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter

public class MovieVO {

	/*
	MNO       NOT NULL NUMBER(4)      
	TITLE     NOT NULL VARCHAR2(1000) 
	POSTER    NOT NULL VARCHAR2(2000) 
	SCORE              NUMBER(4,2)    
	GENRE     NOT NULL VARCHAR2(100)  
	REGDATE            VARCHAR2(100)  
	TIME               VARCHAR2(10)   
	GRADE              VARCHAR2(100)  
	DIRECTOR           VARCHAR2(200)  
	ACTOR              VARCHAR2(200)  
	STORY              CLOB           
	TYPE               NUMBER         
	*/  
	
	private int mno;
	private String title;
	private String poster;
	private double score;
	private String genre;
	private String regdate;
	private String time;
	private String grade;
	private String director;
	private String actor;
	private String story;
	private int type;
}
