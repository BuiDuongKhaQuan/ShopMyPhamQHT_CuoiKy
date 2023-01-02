package qht.shopmypham.com.vn.controller;

import qht.shopmypham.com.vn.service.SubscibeService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "AdminSubriseDelete", value = "/admin-subrise-delete")
public class AdminDeleteSubrise extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String idSc = request.getParameter("idSc");
        SubscibeService.deleteSubscibeById(idSc);
        response.sendRedirect("admin-subrise-list");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
