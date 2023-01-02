package qht.shopmypham.com.vn.controller;

import qht.shopmypham.com.vn.service.SliderSerivce;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "AddSliderController", value = "/admin-shop-add-slider")
public class AdminAddSlider extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("admin-shop-add-slider.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String img = request.getParameter("img");
        String text = request.getParameter("text");
        SliderSerivce.addSlider(img,text);
        response.sendRedirect("admin-shop-list-slider");
    }
}
