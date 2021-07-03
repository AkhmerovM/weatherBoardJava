package ru.first.dryCleaning.config;

import org.springframework.web.servlet.support.AbstractAnnotationConfigDispatcherServletInitializer;

public class AppInitializer extends AbstractAnnotationConfigDispatcherServletInitializer {
    @Override
    protected Class<?>[] getRootConfigClasses() {
        return new Class[0];
    }

    @Override
    protected Class<?>[] getServletConfigClasses() {
        return new Class[] {MySpringConfig.class};
    }

    @Override
    protected String[] getServletMappings() {
        return new String[] {"/"};
    }
}

//    @Override
//    public void onStartup(ServletContext sc) {
//        System.out.println("================================================ SD SAD SAD");
//        AnnotationConfigWebApplicationContext root = new AnnotationConfigWebApplicationContext();
//        System.out.println(root.getServletConfig());
//        root.register(WebSecurityConfig.class);
//
//        sc.addListener(new ContextLoaderListener(root));
//
//        sc.addFilter("securityFilter", new DelegatingFilterProxy("springSecurityFilterChain"))
//                .addMappingForUrlPatterns(null, false, "/*");
//    }