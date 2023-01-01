package qht.shopmypham.com.vn.controller;

import qht.shopmypham.com.vn.service.CategoryService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "AddCategoryController", value = "/admin-product-category-add")
public class AdminAddCategory extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.getRequestDispatcher("admin-product-category-add.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String img = request.getParameter("img");
        CategoryService.addCategory(name, img);
        response.sendRedirect("admin-product-list");
    }
}
