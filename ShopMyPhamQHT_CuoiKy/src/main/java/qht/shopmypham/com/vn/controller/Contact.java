package qht.shopmypham.com.vn.controller;

import qht.shopmypham.com.vn.model.Account;
import qht.shopmypham.com.vn.model.BranchShop;
import qht.shopmypham.com.vn.model.Shop;
import qht.shopmypham.com.vn.service.ContactService;
import qht.shopmypham.com.vn.service.ShopService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "Contact", value = "/contact")
public class Contact extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Shop shop = ShopService.getShop();
        List<BranchShop> branchShopList = ShopService.getAllBranchShop();
        request.setAttribute("branchShopList", branchShopList);
        request.setAttribute("shop", shop);
        request.getRequestDispatcher("contact.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Account acc = (Account) request.getSession().getAttribute("a");
        String fullName = request.getParameter("name");
        String email = request.getParameter("email");
        String content = request.getParameter("content");
        String topic = request.getParameter("topic");

        String mess = "Cám ơn bạn đã liên hệ với chúng tôi, chúng tôi sẽ phản hồi tới bạn sớm nhất!";
        if (acc != null) {
            ContactService.addContact(String.valueOf(acc.getIdA()), email, topic, content, fullName);
        } else {
            ContactService.addContact(null, email, topic, content, fullName);
        }
        Shop shop = ShopService.getShop();
        List<BranchShop> branchShopList = ShopService.getAllBranchShop();
        request.setAttribute("branchShopList", branchShopList);
        request.setAttribute("shop", shop);
        request.setAttribute("mess", mess);
        request.getRequestDispatcher("contact.jsp").forward(request, response);
    }
}
