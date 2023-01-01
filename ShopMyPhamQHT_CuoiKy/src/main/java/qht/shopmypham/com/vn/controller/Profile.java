package qht.shopmypham.com.vn.controller;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ProfileController", value = "/profile")
public class Profile extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        String command = request.getParameter("command");
        String url = "profile.jsp";
        try {
            switch (command) {
                case "edit":
                    url = "edit-profile";
                    break;
                case "logout":
                    session.invalidate();
                    url = "home";
                    break;

                default:

                    break;
            }
        } catch (Exception e) {

        }
        request.getRequestDispatcher(url).forward(request, response);
    }
}
