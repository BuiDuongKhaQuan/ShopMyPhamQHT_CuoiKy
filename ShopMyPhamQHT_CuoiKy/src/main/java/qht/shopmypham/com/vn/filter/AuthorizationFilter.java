package qht.shopmypham.com.vn.filter;

import qht.shopmypham.com.vn.model.Account;

import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebFilter(filterName = "AuthorizationFilter", urlPatterns = "/*")
public class AuthorizationFilter implements Filter {
    private ServletContext context;

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        this.context = filterConfig.getServletContext();
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest) servletRequest;
        HttpServletResponse response = (HttpServletResponse) servletResponse;
        String url = request.getRequestURI();
        if (url.startsWith("/ShopMyPham_war/admin")) {
            Account acc = (Account) request.getSession().getAttribute("a");
            if (acc != null) {
                if (acc.getOrderManage() == 0 && acc.getInfoCompanyManage() == 0 && acc.getProductManage() == 0
                        && acc.getAccountManage() == 0 && acc.getBlogManage() == 0 && acc.getContactManage() == 0
                        && acc.getSubscibeManage() == 0 && acc.getFaqsManage() == 0) {
                    response.sendRedirect("error404.jsp");
                }
                if (url.startsWith("/ShopMyPham_war/admin-checkout") || url.startsWith("/ShopMyPham_war/admin-home")) {
                    if (acc.getOrderManage() == 1) {
                        filterChain.doFilter(request, response);
                    } else {
                        response.sendRedirect("error404.jsp");
                    }
                }
                if (url.startsWith("/ShopMyPham_war/admin-shop") || url.startsWith("/ShopMyPham_war/admin-home")) {
                    if (acc.getInfoCompanyManage() == 1) {
                        filterChain.doFilter(request, response);
                    } else {
                        response.sendRedirect("error404.jsp");
                    }
                }
                if (url.startsWith("/ShopMyPham_war/admin-product") || url.startsWith("/ShopMyPham_war/admin-home")) {
                    if (acc.getProductManage() == 1) {
                        filterChain.doFilter(request, response);
                    } else {
                        response.sendRedirect("error404.jsp");
                    }
                }
                if (url.startsWith("/ShopMyPham_war/admin-account") || url.startsWith("/ShopMyPham_war/admin-home")) {
                    if (acc.getAccountManage() == 1) {
                        filterChain.doFilter(request, response);
                    } else {
                        response.sendRedirect("error404.jsp");
                    }
                }
                if (url.startsWith("/ShopMyPham_war/admin-blog") || url.startsWith("/ShopMyPham_war/admin-home")) {
                    if (acc.getBlogManage() == 1) {
                        filterChain.doFilter(request, response);
                    } else {
                        response.sendRedirect("error404.jsp");
                    }
                }
                if (url.startsWith("/ShopMyPham_war/admin-contact") || url.startsWith("/ShopMyPham_war/admin-home")) {
                    if (acc.getContactManage() == 1) {
                        filterChain.doFilter(request, response);
                    } else {
                        response.sendRedirect("error404.jsp");
                    }
                }
                if (url.startsWith("/ShopMyPham_war/admin-subrise") || url.startsWith("/ShopMyPham_war/admin-home")) {
                    if (acc.getSubscibeManage() == 1) {
                        filterChain.doFilter(request, response);
                    } else {
                        response.sendRedirect("error404.jsp");
                    }
                }
                if (url.startsWith("/ShopMyPham_war/admin-faqs") || url.startsWith("/ShopMyPham_war/admin-home")) {
                    if (acc.getFaqsManage() == 1) {
                        filterChain.doFilter(request, response);
                    } else {
                        response.sendRedirect("error404.jsp");
                    }
                }
            } else {
                response.sendRedirect("login.jsp");
            }
        } else {
            filterChain.doFilter(servletRequest, servletResponse);
        }
    }

    @Override
    public void destroy() {

    }
}
