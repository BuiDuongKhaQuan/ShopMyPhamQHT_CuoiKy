package qht.shopmypham.com.vn.controller;

import qht.shopmypham.com.vn.model.Product;
import qht.shopmypham.com.vn.model.Review;
import qht.shopmypham.com.vn.service.ProductService;
import qht.shopmypham.com.vn.service.ReviewService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "DetailController", value = "/detail")
public class Detail extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("pid");
        Product product = ProductService.getProductById(id);
        List<Product> listProduct = ProductService.getProductByIdC(String.valueOf(product.getIdC()));
        List<Review> reviewList = ReviewService.getAllReview(id);

        request.setAttribute("reviewList",reviewList);
        request.setAttribute("listProduct",listProduct);
        request.setAttribute("product", product);
        request.getRequestDispatcher("detail.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
