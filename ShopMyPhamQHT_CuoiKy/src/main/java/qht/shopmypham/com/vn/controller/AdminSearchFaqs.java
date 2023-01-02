package qht.shopmypham.com.vn.controller;

import qht.shopmypham.com.vn.model.FAQs;
import qht.shopmypham.com.vn.service.FAQsService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "AdminSearchFaqs", value = "/admin-faqs-search")
public class AdminSearchFaqs extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String question = request.getParameter("question");
        List<FAQs> faQsList = FAQsService.getFaqsByQuestion(question);

        request.setAttribute("txtSearch1", question);
        request.setAttribute("active8", "active");
        request.setAttribute("faQsList", faQsList);
        request.getRequestDispatcher("admin-faqs-list.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
