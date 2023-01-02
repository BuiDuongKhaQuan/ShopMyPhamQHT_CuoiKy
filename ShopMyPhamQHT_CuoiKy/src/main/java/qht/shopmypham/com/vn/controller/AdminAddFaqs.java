package qht.shopmypham.com.vn.controller;

import qht.shopmypham.com.vn.model.Account;
import qht.shopmypham.com.vn.service.FAQsService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "AdminAddFaqs", value = "/admin-faqs-add")
public class AdminAddFaqs extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("admin-faqs-add.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String question = request.getParameter("question");
        String answer = request.getParameter("answer");
        Account acc = (Account) request.getSession().getAttribute("a");
        FAQsService.addFQAs(question, answer, String.valueOf(acc.getIdA()));
        response.sendRedirect("admin-faqs-list");
    }
}
