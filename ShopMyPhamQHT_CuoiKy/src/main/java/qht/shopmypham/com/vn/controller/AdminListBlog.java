package qht.shopmypham.com.vn.controller;

import qht.shopmypham.com.vn.model.Blog;
import qht.shopmypham.com.vn.model.BlogOffer;
import qht.shopmypham.com.vn.service.BlogService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "AdminBlogController", value = "/admin-blog-list")
public class AdminListBlog extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Blog> blogList = BlogService.getAllBlog();
        List<BlogOffer> blogOfferList = BlogService.get6BlogOffer();
        request.setAttribute("active5", "active");

        request.setAttribute("blogList", blogList);
        request.setAttribute("blogOfferList", blogOfferList);
        request.getRequestDispatcher("admin-blog-list.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
