package qht.shopmypham.com.vn.controller;

import qht.shopmypham.com.vn.service.ShopService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "DeleteBranchShopController", value = "/admin-shop-delete-branch")
public class AdminDeleteBranch extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String idB = request.getParameter("idB");
        ShopService.deleteBranchShopByIdB(idB);
        response.sendRedirect("admin-shop-list-branch");

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
