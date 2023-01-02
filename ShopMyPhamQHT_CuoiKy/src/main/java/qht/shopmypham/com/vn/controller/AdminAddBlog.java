package qht.shopmypham.com.vn.controller;

import qht.shopmypham.com.vn.model.Account;
import qht.shopmypham.com.vn.service.BlogService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.Date;

@WebServlet(name = "AddBlogController", value = "/admin-blog-add")
public class AdminAddBlog extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("admin-blog-add.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String img = request.getParameter("img");
        String topic = request.getParameter("topic");
        String link = request.getParameter("link");
        String shortContent = request.getParameter("shortContent");
        Account acc = (Account) request.getSession().getAttribute("a");
        Date date = new Date();
        BlogService.addBlogByIdBl(img, link, date.toString(), String.valueOf(acc.getIdA()), topic, shortContent);
        response.sendRedirect("admin-blog-list");
    }
}
