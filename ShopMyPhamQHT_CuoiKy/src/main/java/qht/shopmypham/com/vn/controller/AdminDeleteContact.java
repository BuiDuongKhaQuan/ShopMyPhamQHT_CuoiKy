package qht.shopmypham.com.vn.controller;

import qht.shopmypham.com.vn.service.ContactService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "AdminDeleteContact", value = "/admin-contact-delete")
public class AdminDeleteContact extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String idCt = request.getParameter("idCt");
        ContactService.deleteContactById(idCt);
        response.sendRedirect("admin-contact-list");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
