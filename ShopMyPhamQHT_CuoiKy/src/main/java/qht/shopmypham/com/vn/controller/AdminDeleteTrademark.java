package qht.shopmypham.com.vn.controller;

import qht.shopmypham.com.vn.service.TrademarkService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "AdminShopDeleteTrademark", value = "/admin-shop-delete-trademark")
public class AdminDeleteTrademark extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String idT = request.getParameter("idT");
        TrademarkService.deleteTrademarkById(idT);
        response.sendRedirect("admin-shop-list-trademark");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
