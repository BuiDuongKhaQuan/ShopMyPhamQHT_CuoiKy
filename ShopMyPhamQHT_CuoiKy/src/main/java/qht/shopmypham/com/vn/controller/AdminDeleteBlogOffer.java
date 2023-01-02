package qht.shopmypham.com.vn.controller;

import qht.shopmypham.com.vn.service.BlogService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "DeleteBlogOfferController", value = "/admin-blog-offer-delete")
public class AdminDeleteBlogOffer extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String idBv = request.getParameter("idBv");
        BlogService.deleteBlogOfferByIdBl(idBv);
        response.sendRedirect("admin-blog-list");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
