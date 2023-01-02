package qht.shopmypham.com.vn.controller;

import qht.shopmypham.com.vn.service.ShopService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "EditBranchShopController", value = "/admin-shop-add-branch")
public class AdminAddBranch extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("admin-shop-add-branch.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String address = request.getParameter("address");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone");
        String text = request.getParameter("text");
        ShopService.addBranchShop(name, address, phone, email, text);
        response.sendRedirect("admin-shop-list-branch");
    }
}
