package qht.shopmypham.com.vn.controller;

import qht.shopmypham.com.vn.model.FAQs;
import qht.shopmypham.com.vn.service.FAQsService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "AdminListFaqs", value = "/admin-faqs-list")
public class AdminListFaqs extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<FAQs> faQsList = FAQsService.getAllFQAs();
        request.setAttribute("active8", "active");
        request.setAttribute("faQsList", faQsList);
        request.getRequestDispatcher("admin-faqs-list.jsp").forward(request, response);


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
