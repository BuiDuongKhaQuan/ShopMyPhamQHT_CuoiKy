package qht.shopmypham.com.vn.controller;

import qht.shopmypham.com.vn.service.TrademarkService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "AdminShopAddTrademark", value = "/admin-shop-add-trademark")
public class AdminAddTrademark extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("admin-shop-add-trademark.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");
        String logo = request.getParameter("logo");
        TrademarkService.addTrademark(logo, name, address, phone);
        response.sendRedirect("admin-shop-list-trademark");
    }
}
