package qht.shopmypham.com.vn.controller;

import qht.shopmypham.com.vn.service.BlogService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "DeleteBlogController", value = "/admin-blog-delete")
public class AdminDeleteBlog extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String idBl = request.getParameter("idBl");
        BlogService.deleteBlogByIdBl(idBl);
        response.sendRedirect("admin-blog-list");

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
