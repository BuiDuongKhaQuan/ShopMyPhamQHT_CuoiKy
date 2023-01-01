package qht.shopmypham.com.vn.controller;

import qht.shopmypham.com.vn.model.Product;
import qht.shopmypham.com.vn.service.CategoryService;
import qht.shopmypham.com.vn.service.ProductService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "CategoriesController", value = "/categorie")
public class UserCategories extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String cid = request.getParameter("cid");
        List<Product> productListByIdC = ProductService.getTop10ProductByIdC(cid);
        qht.shopmypham.com.vn.model.Categories categories = CategoryService.getCategoriesById(cid);

        request.setAttribute("categories", categories);
        request.setAttribute("listProduct", productListByIdC);
        request.getRequestDispatcher("categorie.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

}
