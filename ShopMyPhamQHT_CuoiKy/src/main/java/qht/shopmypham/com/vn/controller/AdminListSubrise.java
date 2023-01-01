package qht.shopmypham.com.vn.controller;

import qht.shopmypham.com.vn.model.Subscibe;
import qht.shopmypham.com.vn.service.SubscibeService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "AdminSubriseController", value = "/admin-subrise-list")
public class AdminListSubrise extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Subscibe> subscibe = SubscibeService.getAllSubscibe();

        request.setAttribute("active7", "active");
        request.setAttribute("subscibe", subscibe);
        request.getRequestDispatcher("admin-subrise-list.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
