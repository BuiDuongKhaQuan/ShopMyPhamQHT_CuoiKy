package qht.shopmypham.com.vn.controller;

import qht.shopmypham.com.vn.model.Product;
import qht.shopmypham.com.vn.service.ProductService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "SortProductController", value = "/sort-product")
public class SortProduct extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Product> listProductAscending = ProductService.getProductSortAscendingByPrice();
        List<Product> listProductDescending = ProductService.getProductSortDescendingByPrice();
        List<Product> listProductIsNew = ProductService.getProductByIsNew();
        String command = request.getParameter("command");
        try {
            switch (command) {
                case "ascending":
                    request.setAttribute("listProduct", listProductAscending);

                    break;

                case "descending":
                    request.setAttribute("listProduct", listProductDescending);

                    break;

                case "isNew":
                    request.setAttribute("listProduct", listProductIsNew);

                    break;
                default:

                    break;

            }
            request.getRequestDispatcher("products.jsp").forward(request, response);
        } catch (Exception e) {

        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
