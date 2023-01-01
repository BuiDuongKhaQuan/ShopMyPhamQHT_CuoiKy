package qht.shopmypham.com.vn.controller;

import qht.shopmypham.com.vn.model.*;
import qht.shopmypham.com.vn.service.CategoryService;
import qht.shopmypham.com.vn.service.ShopService;
import qht.shopmypham.com.vn.service.ProductService;
import qht.shopmypham.com.vn.service.SliderSerivce;


import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "Home", value = "/home")
public class UserHome extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<Product> list10UserProduct1 = ProductService.getTop10ProductByIdC(String.valueOf(ShopService.getOffer().get(0).getIdC2()));
        List<Product> list10UserProduct2 = ProductService.getTop10ProductByIdC(String.valueOf(ShopService.getOffer().get(1).getIdC2()));
        List<Categories> top6Categories = CategoryService.getTop6Categories();
        List<Trademark> listTrademark = SliderSerivce.getAllTrademark();
        List<Offer> listOffer = ShopService.getOffer();

        request.setAttribute("listOffer", listOffer);
        request.setAttribute("listTrademark", listTrademark);
        request.setAttribute("top6Categories", top6Categories);
        request.setAttribute("list10Product1", list10UserProduct1);
        request.setAttribute("list10Product2", list10UserProduct2);
        request.getRequestDispatcher("home.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
