package qht.shopmypham.com.vn.controller;

import qht.shopmypham.com.vn.model.Account;
import qht.shopmypham.com.vn.model.Email;
import qht.shopmypham.com.vn.tools.EmailUtil;
import qht.shopmypham.com.vn.service.AccountService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ForgotPassController", value = "/forgot-password")
public class ForgotPass extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("forgot-password.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            String email = request.getParameter("email");
            String user = request.getParameter("user");
            Account acc = AccountService.getAccountByUserAndEmail(user, email);
            request.setAttribute("acc",acc);
            if (acc == null) {
                request.setAttribute("message", "Tài khoản hoặc email không chính xác!");
            } else {
                Email email1 = new Email();
                email1.setFrom("khaquan9a2.2016@gmail.com");
                email1.setFromPasswork("bifusglitpjhggbz");
                email1.setTo(email);
                email1.setSubject("Forgot password function");
                StringBuffer sb = new StringBuffer();
                sb.append("Dear").append(user).append("<br>");
                sb.append("You are used the forgot password function. <br>");
                sb.append("You password is <b>").append(acc.getPass()).append("<br>");
                sb.append("Regards<br>");
                sb.append("Administrator");

                email1.setContent(sb.toString());
                EmailUtil.send(email1);
                request.setAttribute("message", "Mật khẩu đã được gửi vào tài khoản gmail của bạn, vui lòng kiểm tra email của bạn");
            }

        } catch (Exception e) {
            request.setAttribute("message", e.getMessage());
        }
        request.getRequestDispatcher("forgot-password.jsp").forward(request, response);
    }
}
