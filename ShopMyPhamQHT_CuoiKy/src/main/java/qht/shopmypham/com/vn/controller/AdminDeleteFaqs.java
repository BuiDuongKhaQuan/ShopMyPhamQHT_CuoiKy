package qht.shopmypham.com.vn.controller;

import qht.shopmypham.com.vn.service.FAQsService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "AdminDeleteFaqs", value = "/admin-faqs-delete")
public class AdminDeleteFaqs extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String idF = request.getParameter("idF");
        FAQsService.deleteFQAsById(idF);
        response.sendRedirect("admin-faqs-list");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
