<%@ page import="qht.shopmypham.com.vn.model.Account" %><%--
  Created by IntelliJ IDEA.
  User: Bùi Dương Khả Quân
  Date: 11/24/2022
  Time: 8:53 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<nav class="navbar navbar-expand-xl">
    <div class="container h-100">
        <a class="navbar-brand" href="admin-home">
            <h1 class="tm-site-title mb-0">QUẢN TRỊ VIÊN</h1>
        </a>
        <% Account acc = (Account) request.getSession().getAttribute("a");
            String active1 = (String) request.getAttribute("active1");
            String active2 = (String) request.getAttribute("active2");
            String active3 = (String) request.getAttribute("active3");
            String active4 = (String) request.getAttribute("active4");
            String active5 = (String) request.getAttribute("active5");
            String active6 = (String) request.getAttribute("active6");
            String active7 = (String) request.getAttribute("active7");
            String active8 = (String) request.getAttribute("active8");
        %>
        <button
                class="navbar-toggler ml-auto mr-0"
                type="button"
                data-toggle="collapse"
                data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent"
                aria-expanded="false"
                aria-label="Toggle navigation"
        >
            <i class="fas fa-bars tm-nav-icon"></i>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mx-auto h-100">
                <%if (acc.getOrderManage() == 1) {%>
                <li class="nav-item">
                    <a class="nav-link <%=active1%>" href="admin-checkout">
                        <i class="fa-light fa-bags-shopping"></i>
                        Đơn hàng
                        <span class="sr-only">(current)</span>
                    </a>
                </li>
                <%}%>
                <%if (acc.getInfoCompanyManage() == 1) {%>
                <li class="nav-item dropdown <%=active2%>">
                    <a
                            class="nav-link dropdown-toggle"
                            href="#"
                            id="navbarDropdown"
                            role="button"
                            data-toggle="dropdown"
                            aria-haspopup="true"
                            aria-expanded="false"
                    >
                        <i class="far fa-file-alt"></i>
                        <span> Cửa hàng <i class="fas fa-angle-down"></i> </span>
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="admin-shop-list-slider">Slider trang chủ</a>
                        <a class="dropdown-item" href="admin-shop-product">Sản phẩm trên trang chủ</a>
                        <a class="dropdown-item" href="admin-shop-list-trademark">Danh sách đối tác</a>
                        <a class="dropdown-item" href="admin-shop-infoShop">Thông tin cửa hàng</a>
                        <a class="dropdown-item" href="admin-shop-list-branch">Danh sách chi nhánh</a>
                    </div>
                </li>
                <%}%>
                <%if (acc.getProductManage() == 1) {%>
                <li class="nav-item <%=active3%>">
                    <a class="nav-link" href="admin-product-list">
                        <i class="fas fa-shopping-cart"></i>
                        Sản phẩm
                    </a>
                </li>
                <%}%>
                <%if (acc.getAccountManage() == 1) {%>
                <li class="nav-item <%=active4%>">
                    <a class="nav-link" href="admin-account-list">
                        <i class="far fa-user"></i>
                        Tài khoản
                    </a>
                </li>
                <%}%>
                <%if (acc.getBlogManage() == 1) {%>
                <li class="nav-item <%=active5%>">
                    <a class="nav-link" href="admin-blog-list">
                        <i class="fa-regular fa-blog"></i>
                        Blog
                    </a>
                </li>
                <%}%>
                <%if (acc.getContactManage() == 1) {%>
                <li class="nav-item <%=active6%>">
                    <a class="nav-link" href="admin-contact-list">
                        <i class="fa-regular fa-address-card"></i>
                        Liên hệ
                    </a>
                </li>
                <%}%>
                <%if (acc.getSubscibeManage() == 1) {%>
                <li class="nav-item <%=active7%>">
                    <a class="nav-link" href="admin-subrise-list">
                        <i class="fa-regular fa-tag"></i>
                        Đăng ký
                    </a>
                </li>
                <%}%>
                <%if (acc.getFaqsManage() == 1) {%>
                <li class="nav-item <%=active8%>">
                    <a class="nav-link" href="admin-faqs-list">
                        <i class="fa-regular fa-face-thinking"></i>
                        FAQs
                    </a>
                </li>
                <%}%>
            </ul>
            <ul class="navbar-nav ">
                <li class="nav-item ">
                    <a class="nav-link d-block" href="profile?command=logout">
                        Admin, <b>Đăng xuất</b>
                    </a>
                </li>
            </ul>
        </div>
    </div>
</nav>