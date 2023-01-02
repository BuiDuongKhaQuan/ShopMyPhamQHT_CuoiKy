package qht.shopmypham.com.vn.controller;

import qht.shopmypham.com.vn.service.SliderSerivce;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "DeleteSliderController", value = "/admin-shop-delete-slider")
public class AdminDeleteSlider extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String idSl = request.getParameter("idSl");
        SliderSerivce.deleteSliderById(idSl);
        response.sendRedirect("admin-shop-list-slider");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
