package com.sist.aop;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Component;

import com.sist.dao.*;

@Component
public class MainClass {

	@Autowired
	private EmpDAO dao;
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		// 사용자정의 클래스를 스프링 컨테이너에 적용(: Application-context)
		ApplicationContext app=new ClassPathXmlApplicationContext("app.xml");
		MainClass mc=(MainClass)app.getBean("mainClass");
		mc.dao.emp_select();
		mc.dao.emp_delete(1);
		mc.dao.emp_insert("홍길동");
		mc.dao.emp_update(1, "홍길동");
		mc.dao.display();
	}

}
