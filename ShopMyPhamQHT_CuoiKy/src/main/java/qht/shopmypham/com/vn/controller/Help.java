package qht.shopmypham.com.vn.controller;

import qht.shopmypham.com.vn.model.BranchShop;
import qht.shopmypham.com.vn.model.FAQs;
import qht.shopmypham.com.vn.model.Shop;
import qht.shopmypham.com.vn.service.FAQsService;
import qht.shopmypham.com.vn.service.ShopService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "HelpController", value = "/help")
public class Help extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Shop shop = ShopService.getShop();
        List<BranchShop> branchShopList = ShopService.getAllBranchShop();
        request.setAttribute("branchShopList", branchShopList);
        request.setAttribute("shop", shop);
        request.getRequestDispatcher("help.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String ques = request.getParameter("question");
        List<FAQs> ans = FAQsService.getFQAsByQuestion(ques);
        request.setAttribute("fqAsList", ans);
        request.getRequestDispatcher("FAQs.jsp").forward(request, response);
    }
}
