package qht.shopmypham.com.vn.controller;

import qht.shopmypham.com.vn.service.AccountService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "AdminDeleteAccount", value = "/admin-account-delete")
public class AdminDeleteAccount extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    String idA = request.getParameter("idA");
        AccountService.deleteAccountById(idA);
        response.sendRedirect("admin-account-list");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
