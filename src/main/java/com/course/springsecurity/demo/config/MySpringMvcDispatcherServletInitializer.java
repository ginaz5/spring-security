package com.course.springsecurity.demo.config;

import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

public class MySpringMvcDispatcherServletInitializer extends AbstractAnnotationConfigDispatcherServletInitializer {
    @Override
    protected Class<?>[] getRootConfigClasses() {
        return null; // as we only have Servlet Config
    }

    @Override // it's <servlet> tag in xml
    protected Class<?>[] getServletConfigClasses() {
        return new Class[] { DemoAppConfig.class };
    }

    @Override // it's <servlet-mapping> tag in xml
    protected String[] getServletMappings() {
        return new String[] { "/" };
    }
}
