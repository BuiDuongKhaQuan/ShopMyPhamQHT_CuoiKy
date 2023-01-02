<%@ page import="java.util.List" %>
<%@ page import="qht.shopmypham.com.vn.model.Account" %>
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
    <title>Accounts - Product Admin</title>
    <link
            rel="stylesheet"
            href="https://fonts.googleapis.com/css?family=Roboto:400,700"
    />
    <!-- https://fonts.google.com/specimen/Roboto -->
    <link rel="stylesheet" href="./css/fontawesome.min.css"/>
    <!-- https://fontawesome.com/ -->
    <link rel="stylesheet" href="./css/bootstrap.min.css"/>
    <!-- https://getbootstrap.com/ -->
    <link rel="stylesheet" href="./css/templatemo-style.css"/>
    <link href="https://cdn.jsdelivr.net/gh/hung1001/font-awesome-pro-v6@44659d9/css/all.min.css" rel="stylesheet"
          type="text/css"/>
    <!--
        Product Admin CSS Template
        https://templatemo.com/tm-524-product-admin
        -->
</head>

<body id="reportsPage">
<div class="" id="home">
    <jsp:include page="admin-header.jsp"></jsp:include>

    <!--  -->
    <% List<Account> listAccount = (List<Account>) request.getAttribute("listAccount");

    %>
    <div class="container mt-5">
        <!-- row -->
        <div class="row tm-content-row">
            <div class="col-sm-12 col-md-12 col-lg-8 col-xl-8 tm-block-col" style="margin: 0 auto;">
                <div class="tm-bg-primary-dark tm-block tm-block-products">
                    <h2 class="tm-block-title">Danh sách tài khoản</h2>
                    <div class="tm-product-table-container">
                        <table class="table table-hover tm-table-small tm-product-table">
                            <thead>
                            <tr>
                                <th scope="col">TÊN TÀI KHOẢN</th>
                                <th scope="col">EMAIL</th>
                                <th scope="col">TRẠNG THÁI</th>
                            </tr>
                            </thead>
                            <tbody>
                            <% String derpament = "";
                                for (Account acc : listAccount) {
                                    if (acc.getOrderManage() == 0 && acc.getInfoCompanyManage() == 0 && acc.getProductManage() == 0
                                            && acc.getAccountManage() == 0 && acc.getBlogManage() == 0 && acc.getContactManage() == 0 && acc.getSubscibeManage() == 0) {
                                        derpament = "Khách hàng";
                                    }
                                    if (acc.getOrderManage() == 1 && acc.getInfoCompanyManage() == 1 && acc.getProductManage() == 1
                                            && acc.getAccountManage() == 1 && acc.getBlogManage() == 1 && acc.getContactManage() == 1 && acc.getSubscibeManage() == 1) {
                                        derpament = "Quảng trị viên";
                                    }
                                    if (acc.getOrderManage() == 1) {
                                        derpament = "Quản lý đơn hàng";
                                    }
                                    if (acc.getInfoCompanyManage() == 1) {
                                        derpament = "Quản lý thông tin cửa hàng";
                                    }
                                    if (acc.getProductManage() == 1) {
                                        derpament = "Quản lý sản phẩm";
                                    }
                                    if (acc.getAccountManage() == 1) {
                                        derpament = "Quản lý tài khoản";
                                    }
                                    if (acc.getBlogManage() == 1) {
                                        derpament = "Quản lý blog";
                                    }
                                    if (acc.getContactManage() == 1) {
                                        derpament = "Quản lý liên hệ";
                                    }
                                    if (acc.getSubscibeManage() == 1) {
                                        derpament = "Quản lý đăng ký(ưu đãi)";
                                    }
                            %>

                            <tr>
                                <td>
                                    <a href="admin-account-edit?aid=<%=acc.getIdA()%>" style="color: white">
                                        <%=acc.getFullName()%>
                                    </a>
                                </td>
                                <td><%=acc.getEmail()%>
                                </td>
                                <td><%if (acc.getStatus() == 1) {%>
                                    Hoạt động <%} else {%>
                                    Bị khóa <%}%>
                                </td>

                            </tr>
                            <%}%>
                            </tbody>
                        </table>
                    </div>
                    <!-- table container -->
                </div>
            </div>
        </div>
    </div>
    <footer class="tm-footer row tm-mt-small">
        <div class="col-12 font-weight-light">
            <p class="text-center text-white mb-0 px-4 small">
                Copyright &copy; <b>2021</b> All rights reserved. Design:
                <a
                        rel="nofollow noopener"
                        href="https://templatemo.com"
                        class="tm-footer-link"
                >QHT</a
                >
            </p>
        </div>
    </footer>
</div>

<script src="./js/jquery-3.3.1.min.js"></script>
<!-- https://jquery.com/download/ -->
<script src="./js/bootstrap.min.js"></script>
<!-- https://getbootstrap.com/ -->
</body>
</html>
