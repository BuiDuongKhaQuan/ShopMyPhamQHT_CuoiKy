package qht.shopmypham.com.vn.controller;

import qht.shopmypham.com.vn.service.CategoryService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "DeleteCategoryController", value = "/admin-product-category-delete")
public class AdminDeleteCategory extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("cid");

        CategoryService.deleteCategoryById(id);
        response.sendRedirect("admin-product-list");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
