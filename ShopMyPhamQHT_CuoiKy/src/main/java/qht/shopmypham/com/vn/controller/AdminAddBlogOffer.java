package qht.shopmypham.com.vn.controller;

import qht.shopmypham.com.vn.model.Account;
import qht.shopmypham.com.vn.service.BlogService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "BlogOfferController", value = "/admin-blog-offer-add")
public class AdminAddBlogOffer extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.getRequestDispatcher("admin-blog-offer-add.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String img = request.getParameter("img");
        String topic = request.getParameter("topic");
        String link = request.getParameter("link");
        Account acc = (Account) request.getSession().getAttribute("a");
        BlogService.addBlogOfferByIdBl(img, link, String.valueOf(acc.getIdA()), topic);
        response.sendRedirect("admin-blog-list");

    }
}
