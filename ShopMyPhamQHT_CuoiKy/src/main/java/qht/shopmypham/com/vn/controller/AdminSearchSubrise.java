package qht.shopmypham.com.vn.controller;

import qht.shopmypham.com.vn.model.Subscibe;
import qht.shopmypham.com.vn.service.SubscibeService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "AdminSearchSubrise", value = "/admin-subrise-search")
public class AdminSearchSubrise extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        List<Subscibe> subscibe = SubscibeService.getSubscibeByEmail1(email);

        request.setAttribute("txtSearch1", email);
        request.setAttribute("active7", "active");
        request.setAttribute("subscibe", subscibe);
        request.getRequestDispatcher("admin-subrise-list.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
