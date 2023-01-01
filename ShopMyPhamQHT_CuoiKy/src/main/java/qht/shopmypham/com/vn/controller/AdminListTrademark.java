package qht.shopmypham.com.vn.controller;

import qht.shopmypham.com.vn.model.Trademark;
import qht.shopmypham.com.vn.service.SliderSerivce;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "TrademarkController", value = "/admin-shop-list-trademark")
public class AdminListTrademark extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Trademark> listTrademark = SliderSerivce.getAllTrademark();
        request.setAttribute("active2", "active");

        request.setAttribute("listTrademark", listTrademark);
        request.getRequestDispatcher("admin-shop-list-trademark.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
