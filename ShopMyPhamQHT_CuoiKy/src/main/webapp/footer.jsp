<%@ page import="qht.shopmypham.com.vn.model.Shop" %>
<%@ page import="qht.shopmypham.com.vn.service.ShopService" %>
<%@ page import="qht.shopmypham.com.vn.model.Account" %>
<%@ page import="java.util.List" %>
<%@ page import="qht.shopmypham.com.vn.model.BranchShop" %><%--
  Created by IntelliJ IDEA.
  User: Bùi Dương Khả Quân
  Date: 11/19/2022
  Time: 12:33 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- Footer Start -->
<div class="container-fluid bg-secondary text-dark mt-5 pt-5">
    <div class="row px-xl-5 pt-5">
        <% List<BranchShop> branchShopList = ShopService.getAllBranchShop();
            Shop shop = ShopService.getShop();
        %>
        <div class="col-lg-4 col-md-12 mb-5 pr-3 pr-xl-5">
            <a href="home.jsp" class="text-decoration-none">
                <h1 class="mb-4 display-5 font-weight-semi-bold">
                    <img
                            src="./img/zyro.png"
                            width="300px"
                            height="65px"
                            alt=""
                    />
                </h1>
            </a>
            <p>
                <%=shop.getAboutShop()%>
            </p>
        </div>
        <div class="col-lg-8 col-md-12">
            <div class="row">
                <div class="col-md-4 mb-5">
                    <h5 class="font-weight-bold text-dark mb-4">
                        Thông tin liên lạc:
                    </h5>
                    <% int a = 0;
                        for (BranchShop br : branchShopList) {
                            a++;
                    %>
                    <h6 class="font-weight-bold text-dark mb-4" style="margin-bottom: 5px !important; margin-top: 15px">
                        Cơ sở <%=a%>
                    </h6>
                    <div class="d-flex flex-column justify-content-start">
                        <p class="mb-2">
                            <i class="fa fa-map-marker-alt text-primary mr-3"></i>
                            <%=br.getBranchAddress()%>
                        </p>
                        <p class="mb-2">
                            <i class="fa fa-envelope text-primary mr-3"></i
                            ><%=br.getBranchEmail()%>
                        </p>
                        <p class="mb-0">
                            <i class="fa fa-phone-alt text-primary mr-3"></i>
                            <%=br.getBranchPhone()%>
                        </p>
                    </div>
                    <%}%>
                </div>
                <%
                    Account acc = (Account) request.getSession().getAttribute("a");
                %>
                <div class="col-md-4 mb-5">
                    <h5 class="font-weight-bold text-dark mb-4">
                        Truy cập nhanh
                    </h5>
                    <div class="d-flex flex-column justify-content-start">
                        <a class="text-dark mb-2" href="home"
                        ><i class="fa fa-angle-right mr-2"></i>Trang chủ</a
                        >
                        <a class="text-dark mb-2" href="product"
                        ><i class="fa fa-angle-right mr-2"></i>Sản phẩm</a
                        >
                        <%if (acc != null) {%>
                        <a href="cart-show" class="text-dark mb-2"><i class="fa fa-angle-right mr-2"></i>Giỏ hàng</a>
                        <a href="checkout" class="text-dark mb-2"><i class="fa fa-angle-right mr-2"></i>Thanh toán</a>
                        <%} else {%>
                        <a href="cart1.jsp" class="text-dark mb-2"><i class="fa fa-angle-right mr-2"></i>Giỏ hàng</a>
                        <a href="checkout1.jsp" class="text-dark mb-2"><i class="fa fa-angle-right mr-2"></i>Thanh toán</a>
                        <%}%>

                        <a class="text-dark mb-2" href="blog"
                        ><i class="fa fa-angle-right mr-2"></i>Blog</a
                        >
                        <a class="text-dark" href="contact"
                        ><i class="fa fa-angle-right mr-2"></i>Liên hệ</a
                        >
                    </div>
                </div>

                <div class="col-md-4 mb-5">
                    <h5 class="font-weight-bold text-dark mb-4">
                        Nhập thông tin để cập nhật tin tức thường xuyên.
                    </h5>
                    <form action="subscibe">
                        <div class="form-group">
                            <input
                                    type="text"
                                    name="name"
                                    class="form-control border-0 py-4"
                                    placeholder="Tên của bạn?"
                                    required="required"
                            />
                        </div>
                        <div class="form-group">
                            <input
                                    type="email"
                                    name="email"
                                    class="form-control border-0 py-4"
                                    placeholder="Email của bạn?"
                                    required="required"
                            />
                        </div>
                        <div>
                            <button
                                    class="btn btn-primary btn-block border-0 py-3"
                                    type="submit"
                            >
                                OK
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <div class="row border-top border-light mx-xl-5 py-4">
        <div class="col-md-6 px-xl-0">
            <p class="mb-md-0 text-center text-md-left text-dark">
                &copy;
                <a class="text-dark font-weight-semi-bold" href="#"><%=shop.getShopName()%>
                </a>. Đã
                đăng ký bản quyền. Designed by
                <a
                        class="text-dark font-weight-semi-bold"
                        href="https://htmlcodex.com"
                ><%=shop.getDesignerBy()%>
                </a
                >
            </p>
        </div>
        <div class="col-md-6 px-xl-0 text-center text-md-right">
            <img class="img-fluid" src="./img/payments.png" alt=""/>
        </div>
    </div>
</div>
<!-- Footer End -->