<%@ page import="java.text.NumberFormat" %>
<%@ page import="qht.shopmypham.com.vn.model.Product" %>
<%@ page import="java.util.List" %>
<%--
  Created by IntelliJ IDEA.
  User: Bùi Dương Khả Quân
  Date: 12/6/2022
  Time: 4:44 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    NumberFormat nf = NumberFormat.getInstance();
    nf.setMinimumFractionDigits(0);
    List<Product> listProduct = (List<Product>) request.getAttribute("listProduct");
    for (Product p : listProduct) {
%>
<div class="col-lg-14 col-md-13 col-sm-13 pb-1 listproduct">
    <div class="card product-item  mb-4 border-product border-img">
        <%if (p.getIsNew() == 1) {%>
        <div class="is-new">
            <h5 class="new-item">New</h5>
        </div>
        <%}%>
        <div
                class="card-header product-img position-relative overflow-hidden bg-transparent p-0 border-img"
        >
            <a href="detail?pid=<%= p.getIdP()%>">
                <img
                        class="img-fluid w-100 "
                        src="<%=p.getImg1()%>"
                        alt=""
                        style="height: 300px; "
                />
            </a>

        </div>
        <div
                class="card-body text-center p-0 pt-4 pb-3 border-product"
                style=" background:#ffaee0;"
        >
            <a href="detail?pid=<%= p.getIdP()%>" style="text-decoration: none">
                <h6 class="text-truncate mb-3">
                    <%= p.getName()%>
                </h6>
            </a>
            <div class="d-flex justify-content-center">
                <h6><%=nf.format(p.getPrice())%>đ
                </h6>
                <h6 class="text-muted ml-2">
                    <del>123,000đ</del>
                </h6>
            </div>
        </div>
    </div>
</div>
<%}%>
