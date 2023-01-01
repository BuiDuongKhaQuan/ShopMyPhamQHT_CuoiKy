package qht.shopmypham.com.vn.controller;

import qht.shopmypham.com.vn.model.Contact;
import qht.shopmypham.com.vn.model.Email;
import qht.shopmypham.com.vn.tools.EmailUtil;
import qht.shopmypham.com.vn.service.ContactService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "AdminAnsContactController", value = "/admin-contact-ans")
public class AdminAnsContact extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String idCt = request.getParameter("idCt");
        Contact contact = ContactService.getContactById(idCt);
        request.setAttribute("contact", contact);
        request.getRequestDispatcher("admin-contact-ans.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String idCt = request.getParameter("idCt");
        try {
            String ans = request.getParameter("ans");
            Contact contact = ContactService.getContactById(idCt);
            System.out.println(contact.getEmail());
            Email email1 = new Email();
            email1.setFrom("khaquan9a2.2016@gmail.com");
            email1.setFromPasswork("bifusglitpjhggbz");
            email1.setTo(contact.getEmail());
            email1.setSubject("Cửa hàng Mỹ Phẩm QHT");
            StringBuffer sb = new StringBuffer();
            sb.append("Cám ơn bạn đã liên hệ với chúng tôi.");
            sb.append(ans);
            sb.append(" Thân chào");
            sb.append(" Nhân viên chăm sóc khách hàng");
            email1.setContent(sb.toString());
            EmailUtil.send(email1);
            ContactService.editContactById(idCt);
            request.setAttribute("message", "Đã gửi câu trả lời thành công");
        } catch (Exception e) {
            request.setAttribute("message", e.getMessage());
        }
        response.sendRedirect("admin-contact-list");
    }
}
