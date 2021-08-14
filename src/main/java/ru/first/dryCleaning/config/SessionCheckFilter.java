package ru.first.dryCleaning.config;

import org.springframework.security.core.context.SecurityContextImpl;
import org.springframework.security.core.userdetails.UserDetails;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class SessionCheckFilter implements Filter {

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain fc) throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) request;
        HttpSession session = req.getSession(false);

        SecurityContextImpl sci = (SecurityContextImpl) session.getAttribute("SPRING_SECURITY_CONTEXT");
        session.setAttribute("IS_LOGGED", false);

        if (sci != null) {
            UserDetails cud = (UserDetails) sci.getAuthentication().getPrincipal();
            if (cud != null) {
                session.setAttribute("IS_LOGGED", true);
            }
        }
        fc.doFilter(request, response);
    }

    @Override
    public void destroy() {
    }
}