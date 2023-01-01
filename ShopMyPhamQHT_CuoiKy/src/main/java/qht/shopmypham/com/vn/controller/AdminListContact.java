package qht.shopmypham.com.vn.controller;

import qht.shopmypham.com.vn.model.Contact;
import qht.shopmypham.com.vn.service.ContactService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "AdminContactController", value = "/admin-contact-list")
public class AdminListContact extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Contact> contactList = ContactService.getAllContact();
        request.setAttribute("active6", "active");

        request.setAttribute("contactList",contactList);
        request.getRequestDispatcher("admin-contact-list.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
