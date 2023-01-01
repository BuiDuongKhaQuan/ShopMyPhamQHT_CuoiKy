package qht.shopmypham.com.vn.controller;

import qht.shopmypham.com.vn.model.BlogOffer;
import qht.shopmypham.com.vn.service.BlogService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "BlogController", value = "/blog")
public class Blog extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<qht.shopmypham.com.vn.model.Blog> blogList = BlogService.get4Blog();
        List<BlogOffer> blogOfferList = BlogService.get6BlogOffer();

        request.setAttribute("blogList", blogList);
        request.setAttribute("blogOfferList", blogOfferList);
        request.getRequestDispatcher("blog.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
