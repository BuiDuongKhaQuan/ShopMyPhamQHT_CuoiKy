package qht.shopmypham.com.vn.controller;

import qht.shopmypham.com.vn.model.CheckOut;
import qht.shopmypham.com.vn.model.ListProductByCheckOut;
import qht.shopmypham.com.vn.service.CheckOutService;
import qht.shopmypham.com.vn.service.ProductCheckoutService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "AdminDetailCheckOut", value = "/admin-checkout-detail")
public class AdminDetailCheckOut extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String idCk = request.getParameter("idCk");
        List<ListProductByCheckOut> listProductByCheckOuts = ProductCheckoutService.getProductProductCheckoutByIdCk(idCk);
        CheckOut checkOut = CheckOutService.getCheckOutByIdCk(idCk);
        request.setAttribute("checkOut",checkOut);
        request.setAttribute("listProductByCheckOuts",listProductByCheckOuts);
        request.getRequestDispatcher("admin-checkout-detail.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
