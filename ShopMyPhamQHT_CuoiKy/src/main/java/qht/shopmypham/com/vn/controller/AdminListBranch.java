package qht.shopmypham.com.vn.controller;

import qht.shopmypham.com.vn.model.BranchShop;
import qht.shopmypham.com.vn.service.ShopService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "BranchShopController", value = "/admin-shop-list-branch")
public class AdminListBranch extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<BranchShop> branchShopList = ShopService.getAllBranchShop();
        request.setAttribute("active2", "active");
        request.setAttribute("branchShopList", branchShopList);
        request.getRequestDispatcher("admin-shop-list-branch.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
