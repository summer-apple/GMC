package com.gmc.aspect;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;


@Aspect
@Component
public class LogAspect {
	
	
		@Pointcut("execution(* com.gmc.service.*.*(..))")
		public void myPointCut(){}
		
		
	
		@After("LogAspect.myPointCut()")
		public void fuck(){
			System.out.println("do something....%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%");
		}
	
}
