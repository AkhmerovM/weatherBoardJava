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
        HttpServletResponse res = (HttpServletResponse) response;
        HttpSession session = req.getSession(true);
        req.setCharacterEncoding("UTF-8");
        res.setCharacterEncoding("UTF-8");
            if (session != null) {
            Object attribute = session.getAttribute("SPRING_SECURITY_CONTEXT");
            if (attribute != null) {
                SecurityContextImpl sci = (SecurityContextImpl) attribute;
                session.setAttribute("IS_LOGGED", false);

                UserDetails cud = (UserDetails) sci.getAuthentication().getPrincipal();
                if (cud != null) {
                    session.setAttribute("IS_LOGGED", true);
                }
            }
        }else {
            res.sendRedirect("/posts");
        }
        fc.doFilter(request, response);
    }
    @Override
    public void destroy() {
    }
}