package qht.shopmypham.com.vn.controller;

import qht.shopmypham.com.vn.model.Product;
import qht.shopmypham.com.vn.service.ProductService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "FilteProductController", value = "/filter-product")
public class AdminFilteProduct extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String[] price = request.getParameterValues("price");
        List<Product> listAllProduct = ProductService.getAllProduct();
        List<Product> listProductByPrice = null;
        String checked = "checked";
        for (String price0 : price) {
            int price1 = Integer.parseInt(price0);
            int price2 = price1 + 100000;
            listProductByPrice = ProductService.getProductByPrice(price0, String.valueOf(price2));
            if (price1 == 1) {
                request.setAttribute("checked0", checked);
                request.setAttribute("listProduct", listAllProduct);
            }
            if (price1 == 0) {
                request.setAttribute("checked1", checked);
                request.setAttribute("listProduct", listProductByPrice);
            }
            if (price1 == 100000) {
                request.setAttribute("checked2", checked);
                request.setAttribute("listProduct", listProductByPrice);
            }
            if (price1 == 200000) {
                request.setAttribute("checked3", checked);
                request.setAttribute("listProduct", listProductByPrice);
            }
            if (price1 == 300000) {
                request.setAttribute("checked4", checked);
                request.setAttribute("listProduct", listProductByPrice);
            }
            if (price1 == 400000) {
                request.setAttribute("checked5", checked);
                request.setAttribute("listProduct", listProductByPrice);
            }
            if (price1 == 500000) {
                request.setAttribute("checked6", checked);
                request.setAttribute("listProduct", listProductByPrice);
            }

        }
        request.getRequestDispatcher("products.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
