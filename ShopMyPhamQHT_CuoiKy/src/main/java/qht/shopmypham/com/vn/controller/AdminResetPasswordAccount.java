package qht.shopmypham.com.vn.controller;

import qht.shopmypham.com.vn.service.AccountService;
import qht.shopmypham.com.vn.tools.Encode;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "AdminResetPasswordAccount", value = "/admin-account-reset-password")
public class AdminResetPasswordAccount extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String idA = request.getParameter("idA");
        AccountService.resetPasswordAccountById(idA, Encode.enCodeMD5("000000"));
        response.sendRedirect("admin-account-list");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
