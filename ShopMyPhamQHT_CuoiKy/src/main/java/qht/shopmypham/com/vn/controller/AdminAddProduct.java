package qht.shopmypham.com.vn.controller;

import qht.shopmypham.com.vn.model.Categories;
import qht.shopmypham.com.vn.model.Product;
import qht.shopmypham.com.vn.service.CategoryService;
import qht.shopmypham.com.vn.service.ProductService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "AddProductController", value = "/admin-product-add")
public class AdminAddProduct extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Product> list = ProductService.getAllProduct();
        List<Categories> listCategories = CategoryService.getAllCategory();

        request.setAttribute("categoriesList", listCategories);
        request.setAttribute("list", list);
        request.getRequestDispatcher("admin-product-add.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String img1 = request.getParameter("img1");
        String img2 = request.getParameter("img2");
        String img3 = request.getParameter("img3");
        String img4 = request.getParameter("img4");
        String information = request.getParameter("information");
        String category = request.getParameter("category");
        String price = request.getParameter("price");
        String trademark = request.getParameter("trademark");
        String quantity = request.getParameter("quantity");
        ProductService.addProduct(name, img1, img2, img3, img4, "1", "0", "0", trademark, information, category, price, quantity);
        response.sendRedirect("admin-product-list");
    }
}
