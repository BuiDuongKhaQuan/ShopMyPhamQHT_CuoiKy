package qht.shopmypham.com.vn.controller;

import qht.shopmypham.com.vn.model.Email;
import qht.shopmypham.com.vn.tools.EmailUtil;
import qht.shopmypham.com.vn.service.SubscibeService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.Date;

@WebServlet(name = "SubscibeController", value = "/subscibe")
public class Subscibe extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String name = request.getParameter("name");
        Date date = new Date();
        qht.shopmypham.com.vn.model.Subscibe subscibe = SubscibeService.getSubscibeByEmail(email);
        if (subscibe == null) {
            SubscibeService.addSubscibe(name, email, date.toString());
            try {
                Email email1 = new Email();
                email1.setFrom("khaquan9a2.2016@gmail.com");
                email1.setFromPasswork("bifusglitpjhggbz");
                email1.setTo(email);
                email1.setSubject("Cửa hàng Mỹ Phẩm QHT");
                StringBuffer sb = new StringBuffer();
                sb.append("Cám ơn bạn đã liên hệ với chúng tôi.");
                sb.append("Cảm ơn bạn đã đăng ký, chúng tôi sẻ gửi những thông báo sớm nhất đến bạn!");
                sb.append(" Thân chào");
                sb.append(" Nhân viên chăm sóc khách hàng");
                email1.setContent(sb.toString());
                EmailUtil.send(email1);
                request.setAttribute("message", "Đã gửi câu trả lời thành công");
            } catch (Exception e) {
                request.setAttribute("message", e.getMessage());
            }
            response.sendRedirect("home");
        } else {
            response.sendRedirect("home");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
