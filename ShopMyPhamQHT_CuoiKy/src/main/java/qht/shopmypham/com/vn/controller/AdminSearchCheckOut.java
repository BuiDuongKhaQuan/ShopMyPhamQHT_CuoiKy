package qht.shopmypham.com.vn.controller;

import qht.shopmypham.com.vn.model.CheckOut;
import qht.shopmypham.com.vn.service.CheckOutService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "AdminSearchCheckOut", value = "/admin-checkout-search")
public class AdminSearchCheckOut extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        List<CheckOut> checkOutList = CheckOutService.getCheckOutById(id);
        request.setAttribute("checkOutList", checkOutList);
        request.setAttribute("txtSearch1", id);
        request.getRequestDispatcher("admin-checkout-list.jsp").forward(request, response);


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
