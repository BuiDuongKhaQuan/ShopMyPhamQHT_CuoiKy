package qht.shopmypham.com.vn.controller;

import qht.shopmypham.com.vn.model.Account;
import qht.shopmypham.com.vn.service.ReviewService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ReviewController", value = "/review")
public class Review extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String information = request.getParameter("information");
        String idP = request.getParameter("idP");
        Account acc = (Account) request.getSession().getAttribute("a");

        ReviewService.addReview(idP, String.valueOf(acc.getIdA()), information);

        response.sendRedirect("detail?pid=" + idP);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
