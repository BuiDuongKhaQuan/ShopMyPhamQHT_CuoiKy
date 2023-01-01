package qht.shopmypham.com.vn.controller;

import qht.shopmypham.com.vn.model.CheckOut;
import qht.shopmypham.com.vn.service.CheckOutService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "AdminCheckOutController", value = "/admin-checkout")
public class AdminListCheckOut extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<CheckOut> checkOutList = CheckOutService.getAllCheckOut();
        request.setAttribute("active1", "active");

        request.setAttribute("checkOutList", checkOutList);
        request.getRequestDispatcher("admin-checkout-list.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
