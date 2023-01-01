package qht.shopmypham.com.vn.controller;

import qht.shopmypham.com.vn.model.Slider;
import qht.shopmypham.com.vn.service.SliderSerivce;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "ListSliderController", value = "/admin-shop-list-slider")
public class AdminListSlider extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Slider> sliderList = SliderSerivce.getAllSlider();

        request.setAttribute("active2", "active");
        request.setAttribute("sliderList", sliderList);
        request.getRequestDispatcher("admin-shop-list-slider.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
