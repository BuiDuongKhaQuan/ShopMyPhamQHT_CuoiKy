package qht.shopmypham.com.vn.controller;

import qht.shopmypham.com.vn.service.ShopService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ShopController", value = "/admin-shop-infoShop")
public class Shop extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        qht.shopmypham.com.vn.model.Shop shop = ShopService.getShop();
        request.setAttribute("active2", "active");

        request.setAttribute("shop", shop);
        request.getRequestDispatcher("admin-shop-infoShop.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String idS = request.getParameter("idS");
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");
        String logo = request.getParameter("logo");
        String designer = request.getParameter("designer");
        String help = request.getParameter("help");
        String information = request.getParameter("information");
        ShopService.editShop(idS, logo, name, information, address, phone, email, designer, help);
        response.sendRedirect("admin-shop-infoShop");
    }
}
