package qht.shopmypham.com.vn.controller;

import qht.shopmypham.com.vn.model.Product;
import qht.shopmypham.com.vn.service.CategoryService;
import qht.shopmypham.com.vn.service.ProductService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.text.NumberFormat;
import java.util.List;

@WebServlet(name = "LoadMoreProductByCategory", value = "/load-more-category")
public class LoadMoreProductByCategory extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String amount = request.getParameter("exits");
        String cid = request.getParameter("idC");
        System.out.println(amount);
        System.out.println(cid);
        List<Product> productList = CategoryService.getNextTop12ProductByIdC(Integer.parseInt(amount), cid);
        System.out.println(productList);
        NumberFormat nf = NumberFormat.getInstance();
        nf.setMinimumFractionDigits(0);
        PrintWriter out = response.getWriter();
        for (Product p : productList) {
            String isNew = "";
            if (p.getIsNew() == 1) {
                isNew = "<div class=\"is-new\">\n" +
                        "            <h5 class=\"new-item\">New</h5>\n" +
                        "        </div>";
            } else {
                isNew = "";
            }
            out.println("<div class=\"col-lg-15 col-md-13 col-sm-13 pb-1 listproduct1\">\n" +
                    "            <div class=\"card product-item  mb-4 border-product border-img\">\n" +
                    "        " + isNew +
                    "                <div\n" +
                    "                        class=\"card-header product-img position-relative overflow-hidden bg-transparent p-0 border-img\"\n" +
                    "                >\n" +
                    "                    <a href=\"detail?pid=" + p.getIdP() + "\">\n" +
                    "                        <img\n" +
                    "                                class=\"img-fluid w-100\"\n" +
                    "                                src=\"" + p.getImg1() + "\"\n" +
                    "                                alt=\"\"\n" +
                    "                                style=\"height: 300px; \"\n" +
                    "                        />\n" +
                    "                    </a>\n" +
                    "\n" +
                    "                </div>\n" +
                    "                <div\n" +
                    "                        class=\"card-body text-center p-0 pt-4 pb-3 border-product\"\n" +
                    "                        style=\" background:#ffaee0;\"\n" +
                    "                >\n" +
                    "                    <a href=\"detail?pid=" + p.getIdP() + "\" style=\"text-decoration: none\">\n" +
                    "                        <h6 class=\"text-truncate mb-3\">\n" +
                    "                            " + p.getName() + "\n" +
                    "                        </h6>\n" +
                    "                    </a>\n" +
                    "                    <div class=\"d-flex justify-content-center\">\n" +
                    "                        <h6>" + nf.format(p.getPrice()) + "đ\n" +
                    "                        </h6>\n" +
                    "                        <h6 class=\"text-muted ml-2\">\n" +
                    "                            <del>123,000đ</del>\n" +
                    "                        </h6>\n" +
                    "                    </div>\n" +
                    "                </div>\n" +
                    "            </div>\n" +
                    "        </div>");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
