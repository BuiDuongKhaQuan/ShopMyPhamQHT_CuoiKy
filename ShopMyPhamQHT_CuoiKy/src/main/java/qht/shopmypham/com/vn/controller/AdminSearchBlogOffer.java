package qht.shopmypham.com.vn.controller;

import qht.shopmypham.com.vn.model.Blog;
import qht.shopmypham.com.vn.model.BlogOffer;
import qht.shopmypham.com.vn.service.BlogService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "AdminSearchBlogOffer", value = "/admin-blog-offer-search")
public class AdminSearchBlogOffer extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String topic = request.getParameter("topic1");
        List<Blog> blogList = BlogService.getAllBlog();
        List<BlogOffer> blogOfferList = BlogService.getBlogOfferByTopic(topic);
        request.setAttribute("txtSearch1", topic);
        request.setAttribute("active5", "active");
        request.setAttribute("blogList", blogList);
        request.setAttribute("blogOfferList", blogOfferList);
        request.getRequestDispatcher("admin-blog-list.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
