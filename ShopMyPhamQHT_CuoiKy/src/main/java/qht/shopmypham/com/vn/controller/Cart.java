package qht.shopmypham.com.vn.controller;

import qht.shopmypham.com.vn.model.Account;
import qht.shopmypham.com.vn.model.ListProductByCart;
import qht.shopmypham.com.vn.service.CartService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "CartController", value = "/cartcontroller")
public class Cart extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String product_id = request.getParameter("product_id");
        String quantity = "1";
        String command = request.getParameter("command");
        Account acc = (Account) request.getSession().getAttribute("a");
        String url = "cart-show";
        if (acc != null) {
            ListProductByCart byCart = CartService.checkProduct(product_id, String.valueOf(acc.getIdA()));
            try {
                switch (command) {
                    case "insertItem":
                        if (byCart == null) {
                            CartService.addProductToCart(product_id, quantity, String.valueOf(acc.getIdA()));
                        } else {
                            int quantity1 = byCart.getQuantity();
                            CartService.upQuantityProductListProductByCart(String.valueOf(quantity1 + 1), product_id, String.valueOf(acc.getIdA()));
                        }
                        url = "product";
                        break;
                    case "addItem":
                        if (byCart != null) {
                            int quantity1 = byCart.getQuantity();
                            CartService.upQuantityProductListProductByCart(String.valueOf(quantity1 + 1), product_id, String.valueOf(acc.getIdA()));
                        }
                        url = "cart-show";
                        break;
                    case "subItem":
                        int quantity1 = byCart.getQuantity();
                        if (quantity1 > 1) {
                            CartService.upQuantityProductListProductByCart(String.valueOf(quantity1 - 1), product_id, String.valueOf(acc.getIdA()));
                        }
                        if (quantity1 == 1) {
                            CartService.deleteProductByIdpAndIda(product_id, String.valueOf(acc.getIdA()));
                        }
                        url = "cart-show";
                        break;
                    case "deleteItem":
                        CartService.deleteProductByIdpAndIda(product_id, String.valueOf(acc.getIdA()));
                        url = "cart-show";
                        break;
                    default:
                        break;

                }

                response.sendRedirect(url);
            } catch (Exception e) {

            }
        } else {
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
