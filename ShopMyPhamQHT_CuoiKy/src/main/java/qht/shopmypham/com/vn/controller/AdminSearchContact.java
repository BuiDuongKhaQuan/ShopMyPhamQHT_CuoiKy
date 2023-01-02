package qht.shopmypham.com.vn.controller;

import qht.shopmypham.com.vn.model.Contact;
import qht.shopmypham.com.vn.service.ContactService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "AdminSearchContact", value = "/admin-contact-search")
public class AdminSearchContact extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        List<Contact> contactList = ContactService.getContactByName(name);

        request.setAttribute("active6", "active");
        request.setAttribute("txtSearch", name);
        request.setAttribute("contactList", contactList);
        request.getRequestDispatcher("admin-contact-list.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
