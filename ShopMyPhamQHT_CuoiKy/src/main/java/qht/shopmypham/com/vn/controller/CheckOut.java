package qht.shopmypham.com.vn.controller;

import qht.shopmypham.com.vn.model.Account;
import qht.shopmypham.com.vn.model.ListProductByCart;
import qht.shopmypham.com.vn.model.Payment;
import qht.shopmypham.com.vn.service.CartService;
import qht.shopmypham.com.vn.service.CheckOutService;
import qht.shopmypham.com.vn.service.PaymentService;
import qht.shopmypham.com.vn.service.ProductService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.Date;
import java.util.List;

@WebServlet(name = "CheckOutController", value = "/checkout")
public class CheckOut extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Payment> paymentList = PaymentService.getAllPayment();
        Account acc = (Account) request.getSession().getAttribute("a");
        List<ListProductByCart> list = CartService.getAllByIda(String.valueOf(acc.getIdA()));
        request.setAttribute("list", list);
        request.setAttribute("paymentList", paymentList);
        request.getRequestDispatcher("checkout.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Account acc = (Account) request.getSession().getAttribute("a");
        String name = request.getParameter("name");
        String phone = request.getParameter("phone");
        String address = request.getParameter("address");
        String note = request.getParameter("note");
        String payment = request.getParameter("payment");
        List<ListProductByCart> list = CartService.getAllByIda(String.valueOf(acc.getIdA()));

        Date date = new Date();
        CheckOutService.addCheckOutByIdA(phone, address, payment, name, note, String.valueOf(acc.getIdA()), date.toString());
        for (ListProductByCart l : list) {
            ProductService.upQuantityProductById(String.valueOf(ProductService.getProductById(String.valueOf(l.getIdP())).getQuantity() - l.getQuantity()), String.valueOf(l.getIdP()));
            CheckOutService.addProductToCheckOut(String.valueOf(l.getIdP()), String.valueOf(l.getQuantity()), String.valueOf(acc.getIdA()));
        }
        CartService.deleteProductByIda(String.valueOf(acc.getIdA()));
        response.sendRedirect("home");
    }
}
