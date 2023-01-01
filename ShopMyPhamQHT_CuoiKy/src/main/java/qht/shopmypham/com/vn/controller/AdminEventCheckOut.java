package qht.shopmypham.com.vn.controller;

import qht.shopmypham.com.vn.model.Account;
import qht.shopmypham.com.vn.service.CheckOutService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.Date;

@WebServlet(name = "ActionCheckOutController", value = "/action-checkout")
public class AdminEventCheckOut extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Account acc = (Account) request.getSession().getAttribute("a");
        String command = request.getParameter("command");
        String idCk = request.getParameter("idCk");
        Date date = new Date();
        String url = "admin-checkout";
        try {
            switch (command) {
                case "ok":
                    CheckOutService.confirmCheckOutByidCk(idCk, String.valueOf(acc.getIdA()), date.toString());
                    url = "admin-checkout";
                    break;
                case "confirm":
                    CheckOutService.completeCheckOutByidCk(idCk, String.valueOf(acc.getIdA()), date.toString());
                    url = "admin-checkout";
                    break;
                case "cance":
                    CheckOutService.canceCheckOutByidCk(idCk, String.valueOf(acc.getIdA()));
                    url = "admin-checkout";
                    break;
                default:

                    break;
            }
        } catch (Exception e) {

        }
        request.getRequestDispatcher(url).forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
