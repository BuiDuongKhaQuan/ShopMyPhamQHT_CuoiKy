package qht.shopmypham.com.vn.controller;

import qht.shopmypham.com.vn.service.ProductService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "Categories", value = "/product")
public class UserProduct extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<qht.shopmypham.com.vn.model.Product> listProduct = ProductService.getTop12Product();
        String checked = "checked";

        request.setAttribute("checked0", checked);
        request.setAttribute("listProduct", listProduct);
        request.getRequestDispatcher("products.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


    }
}
