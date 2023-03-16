package com.yandr2022.spring.mvc_hibernate_aop.aspect;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.reflect.MethodSignature;
import org.springframework.stereotype.Component;

@Component
@Aspect
public class MyLoggingAspect {
    @Around("execution(* com.yandr2022.spring.mvc_hibernate_aop.dao.*.*(..) )")
    public Object aroundAllRepositoryMethodsAdvice(ProceedingJoinPoint proceedingJoinPoint) throws Throwable{
        MethodSignature signature = (MethodSignature) proceedingJoinPoint.getSignature();
        String methName = signature.getName();
        System.out.println("Begin of "+methName);
        Object targetMethResult = proceedingJoinPoint.proceed();
        System.out.println("End of "+methName);
        return targetMethResult;
    }
}
