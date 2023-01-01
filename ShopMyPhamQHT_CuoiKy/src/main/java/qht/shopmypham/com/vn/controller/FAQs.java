package qht.shopmypham.com.vn.controller;

import qht.shopmypham.com.vn.service.FAQsService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "FAQsController", value = "/faqs")
public class FAQs extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<qht.shopmypham.com.vn.model.FAQs> FAQsList = FAQsService.getAllFQAs();

        request.setAttribute("fqAsList", FAQsList);
        request.getRequestDispatcher("FAQs.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
