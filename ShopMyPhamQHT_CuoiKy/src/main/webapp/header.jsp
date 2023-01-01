<%@ page import="qht.shopmypham.com.vn.model.Account" %>
<%@ page import="qht.shopmypham.com.vn.model.Categories" %>
<%@ page import="java.util.List" %>
<%@ page import="qht.shopmypham.com.vn.model.ListProductByCart" %>
<%@ page import="qht.shopmypham.com.vn.service.CategoryService" %>
<%@ page import="qht.shopmypham.com.vn.service.CartService" %><%--
  Created by IntelliJ IDEA.
  User: Bùi Dương Khả Quân
  Date: 11/19/2022
  Time: 2:47 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- Topbar Start -->
<div class="container-fluid">
    <div class="row bg-secondary py-2 px-xl-5">
        <div class="col-lg-6 d-none d-lg-block">
            <div class="d-inline-flex align-items-center">
                <a class="text-dark" href="faqs">FAQs</a>
                <span class="text-muted px-2">|</span>
                <a class="text-dark" href="help">Help</a>
                <span class="text-muted px-2">|</span>
                <a class="text-dark" href="contact">Support</a>
            </div>
        </div>
        <div class="col-lg-6 text-center text-lg-right">
            <div class="d-inline-flex align-items-center">
                <a class="text-dark px-2" href="https://www.facebook.com/">
                    <i class="fab fa-facebook-f"></i>
                </a>
                <a class="text-dark px-2" href="https://twitter.com/?lang=vi">
                    <i class="fab fa-twitter"></i>
                </a>
                <a class="text-dark px-2" href="https://www.linkedin.com">
                    <i class="fab fa-linkedin-in"></i>
                </a>
                <a class="text-dark px-2" href="https://www.instagram.com">
                    <i class="fab fa-instagram"></i>
                </a>
                <a class="text-dark pl-2" href="https://www.youtube.com/">
                    <i class="fab fa-youtube"></i>
                </a>
            </div>
        </div>
    </div>
    <div class="row align-items-center py-3 px-xl-5">
        <div class="col-lg-3 d-none d-lg-block">
            <a href="home" class="text-decoration-none">
                <img
                        src="./img/logo.png"
                        width="100%"
                        height="110px"
                        alt=""
                />
            </a>
        </div>
        <div class="col-lg-6 col-6 text-left">
            <form action="search">
                <% String txtInput = (String) request.getAttribute("txtSearch"); %>
                <div class="input-group">
                    <%if (txtInput != null) {%>
                    <input
                            type="text"
                            name="nameP"
                            class="form-control"
                            placeholder="Nhập tên sản phẩm bạn muốn tìm kiếm"
                            value="<%=txtInput%>"
                    />
                    <%} else {%>
                    <input
                            type="text"
                            name="nameP"
                            class="form-control"
                            placeholder="Nhập tên sản phẩm bạn muốn tìm kiếm"
                    />
                    <%}%>
                    <div class="input-group-append">
                        <button type="submit"
                                class="input-group-text bg-transparent text-primary btn"
                        >
                            <i class="fa fa-search"></i>
                        </button>
                    </div>
                </div>
            </form>
        </div>
        <%
            Account acc = (Account) request.getSession().getAttribute("a");
        %>
        <div class="col-lg-3 col-6 text-right">

            <% if (acc != null) {
                List<ListProductByCart> list = CartService.getAllByIda(String.valueOf(acc.getIdA()));
            %>
            <a href="cart-show" class="btn border">
                <i class="fas fa-shopping-cart text-primary"></i>
                <span class="badge"><%=list.size()%></span>
            </a>
            <%} else {%>
            <a href="cart1.jsp" class="btn border">
                <i class="fas fa-shopping-cart text-primary"></i>
                <span class="badge">0</span>
            </a>
            <%}%>
        </div>
    </div>
</div>
<!-- Topbar End -->

<!-- Navbar Start -->
<div class="container-fluid mb-5 padding-0"
     style="margin: 0 !important; border-bottom: 2px solid rgb(57, 57, 57)">
    <div class="row border-top px-xl-5 px-xl-6">
        <div
                class="col-lg-padding col-lg-3 d-none d-lg-block navbar-link nav-item dropdown text-black-0"
        >
            <a
                    href="#"
                    class="nav-link text-black-1"
                    data-toggle="dropdown"
                    href="#navbar-vertical"
            >Danh mục
                <i class="fa fa-angle-down"></i>
            </a>

            <div class="dropdown-menu rounded-0 m-0">

                <% List<Categories> listCategories = CategoryService.getAllCategory();
                    for (Categories c : listCategories) {
                %>
                <a href="categorie?cid=<%=c.getIdC()%>" class="dropdown-item"
                ><%= c.getNameC()%>
                </a>
                <%}%>
            </div>
        </div>

        <div class="menu-flex-row mr-auto py-0">
            <a href="home" class="nav-item nav-link active text-black-1"
            >Trang chủ</a
            >
            <a href="product" class="nav-item nav-link text-black-1"
            >Sản phẩm</a
            >
            <div class="nav-item dropdown">
                <a
                        href="#"
                        class="nav-link dropdown-toggle text-black-1"
                        data-toggle="dropdown"
                >Trang</a
                >
                <div class="dropdown-menu rounded-0 m-0">
                    <%if (acc != null) {%>
                    <a href="cart-show" class="dropdown-item">Giỏ hàng</a>
                    <a href="checkout" class="dropdown-item">Thanh toán</a>
                    <%} else {%>
                    <a href="cart1.jsp" class="dropdown-item">Giỏ hàng</a>
                    <a href="checkout1.jsp" class="dropdown-item">Thanh toán</a>
                    <%}%>

                </div>
            </div>
            <a href="blog" class="nav-item nav-link text-black-1"
            >Blog</a
            >

            <a href="contact" class="nav-item nav-link text-black-1"
            >Liên hệ</a
            >
        </div>
        <div class="navbar-nav ml-auto py-0 pading btn-login">
            <%
                if (acc == null) {
            %>
            <a href="login.jsp" class="nav-item nav-link text-black-1"
            >Đăng nhập</a
            >
            <%}%>
            <% if (acc != null) {
                if (acc.getOrderManage() == 0 && acc.getInfoCompanyManage() == 0 && acc.getProductManage() == 0
                        && acc.getAccountManage() == 0 && acc.getBlogManage() == 0 && acc.getContactManage() == 0
                        && acc.getSubscibeManage() == 0 && acc.getFaqsManage() == 0) {%>
            <a href="profile" class="nav-item nav-link text-black-1"
            >Xin chào <%= acc.getUser()%>
            </a>
            <%} else {%>
            <a href="admin-home" class="nav-item nav-link text-black-1"
            >Xin chào Admin
            </a
            >
            <%
                    }
                }
            %>
        </div>
    </div>

    <div class="col-lg-13 col-lg-padding">
        <nav
                class="navbar navbar-expand-lg bg-light navbar-light py-3 py-lg-0 px-0"
        >
            <a
                    href="home"
                    class="text-decoration-none d-block d-lg-none"

            >
                <div class="m-0 display-5 font-weight-semi-bold"
                >
                    <img
                            src="./img/zyro.png"
                            height="80px"
                            width="100%"
                            alt=""
                    />
                </div>
            </a>

            <div style="width:100px;"></div>

            <button type="button" class="navbar-toggler dropdown">
                <a
                        href="#"
                        class=""
                        data-toggle="dropdown"
                        href="#navbar-vertical"
                >
                    <span class="navbar-toggler-icon"></span>
                </a>

                <div class="dropdown-menu rounded-0 m-0">
                    <% for (Categories c : listCategories) {
                    %>
                    <a href="categorie?cid=<%=c.getIdC()%>" class="dropdown-item"
                    ><%= c.getNameC()%>
                    </a>
                    <%}%>
                    <% if (acc != null) {
                        if (acc.getOrderManage() == 0 && acc.getInfoCompanyManage() == 0 && acc.getProductManage() == 0
                                && acc.getAccountManage() == 0 && acc.getBlogManage() == 0 && acc.getContactManage() == 0 && acc.getSubscibeManage() == 0) {%>
                    <a href="profile" class="nav-item nav-link text-black-1"
                    >Xin chào <%= acc.getUser()%>
                    </a>
                    <%} else {%>
                    <a href="admin-checkout" class="nav-item nav-link text-black-1"
                    >Xin chào Admin
                    </a
                    >
                    <%
                            }
                        }
                    %>
                </div>
            </button>
        </nav>

    </div>
</div>