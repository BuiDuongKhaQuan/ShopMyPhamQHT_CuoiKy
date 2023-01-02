<%@ page import="java.util.List" %>
<%@ page import="qht.shopmypham.com.vn.model.*" %>
<%@ page import="qht.shopmypham.com.vn.service.AccountService" %>
<%@ page import="java.util.Collections" %>
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
    <div class="container mt-5">
        <!-- row -->
        <% List<Product> productList = (List<Product>) request.getAttribute("productList");
            List<CheckOut> checkOutList = (List<CheckOut>) request.getAttribute("checkOutList");
            List<Account> accountList = (List<Account>) request.getAttribute("accountList");
            List<Subscibe> subscibeList = (List<Subscibe>) request.getAttribute("subscibeList");
        %>
        <div class="row tm-content-row">
            <div class="col-sm-12 col-md-12 col-lg-6 col-xl-60 tm-block-col">
                <div class="tm-bg-primary-dark tm-block-admin-home">
                    <div style="display: flex; justify-content: space-between;">
                        <h2 class="tm-block-title" style="float: left"><%=accountList.size()%>
                        </h2>
                        <i class="far fa-user" style="font-size: 20px;color: blanchedalmond; float: right"></i>
                    </div>
                    <h2 class="tm-block-title tm-block-title-admin-home">Tổng số tài khoản</h2>
                </div>
            </div>
            <div class="col-sm-12 col-md-12 col-lg-6 col-xl-60 tm-block-col">
                <div class="tm-bg-primary-dark tm-block-admin-home">
                    <div style="display: flex; justify-content: space-between;">
                        <h2 class="tm-block-title" style="float: left"><%=productList.size()%>
                        </h2>
                        <i class="fas fa-shopping-cart" style="font-size: 20px;color: blanchedalmond; float: right"></i>
                    </div>
                    <h2 class="tm-block-title tm-block-title-admin-home">Tổng số lượng sản phẩm</h2>
                </div>
            </div>
            <div class="col-sm-12 col-md-12 col-lg-6 col-xl-60 tm-block-col">
                <div class="tm-bg-primary-dark tm-block-admin-home">
                    <div style="display: flex; justify-content: space-between;">
                        <h2 class="tm-block-title" style="float: left"><%=checkOutList.size()%>
                        </h2>
                        <i class="fa-light fa-bags-shopping"
                           style="font-size: 20px;color: blanchedalmond; float: right"></i>
                    </div>
                    <h2 class="tm-block-title tm-block-title-admin-home">Tổng số đơn hàng</h2>
                </div>
            </div>
            <div class="col-sm-12 col-md-12 col-lg-6 col-xl-60 tm-block-col">
                <div class="tm-bg-primary-dark tm-block-admin-home">
                    <div style="display: flex; justify-content: space-between;">
                        <h2 class="tm-block-title" style="float: left"><%=subscibeList.size()%>
                        </h2>
                        <i class="fa-regular fa-tag" style="font-size: 20px;color: blanchedalmond;"></i>
                    </div>
                    <h2 class="tm-block-title tm-block-title-admin-home">Tổng số đăng ký</h2>
                </div>
            </div>
        </div>
        <div class="col-sm-12 col-md-12 col-lg-8 col-xl-16 tm-block-col" style="padding: 0">
            <div class="tm-bg-primary-dark tm-block tm-block-products" style="min-height: 625px;">
                <h2 class="tm-block-title">Danh sách đơn hàng gần đây</h2>
                <div class="tm-product-table-container1">
                    <table class="table table-hover tm-table-small tm-product-table">
                        <thead>
                        <tr>
                            <th scope="col">MÃ ĐƠN HÀNG</th>
                            <th scope="col">TRẠNG THÁI</th>
                            <th scope="col">ĐIỀU HÀNH</th>
                            <th scope="col">ĐỊA CHỈ</th>
                            <th scope="col">NGÀY ĐẶT</th>
                            <th scope="col">NGÀY XÁC NHẬN</th>
                            <th scope="col">NGÀY HOÀN THÀNH</th>
                            <th scope="col"></th>
                        </tr>
                        </thead>
                        <tbody>
                        <% Collections.reverse(checkOutList);
                            for (int i = 0; i < 5; i++) {
                                String status = "";
                                if (checkOutList.get(i).getIdStatus() == 0) {
                                    status = "Chờ xác nhận";
                                }
                                if (checkOutList.get(i).getIdStatus() == 1) {
                                    status = "Đang vận chuyển";
                                }
                                if (checkOutList.get(i).getIdStatus() == 2) {
                                    status = "Hoàn thành";
                                }
                                if (checkOutList.get(i).getIdStatus() == 3) {
                                    status = "Đã hoàn thành";
                                }
                                if (checkOutList.get(i).getIdStatus() == 4) {
                                    status = "Chờ xác nhận hủy";
                                }
                                if (checkOutList.get(i).getIdStatus() == 5) {
                                    status = "Đã hủy";
                                }
                        %>

                        <tr>
                            <th scope="row"><b>#<%=checkOutList.get(i).getIdCk()%>
                            </b></th>
                            <td>
                                <%if (checkOutList.get(i).getIdStatus() == 0) {%>
                                <div class="tm-status-circle pending"></div>
                                <%=status%>
                                <%}%>
                                <%if (checkOutList.get(i).getIdStatus() == 1 || checkOutList.get(i).getIdStatus() == 2 || checkOutList.get(i).getIdStatus() == 3) {%>
                                <div class="tm-status-circle moving"></div>
                                <%=status%>
                                <%}%>
                                <%if (checkOutList.get(i).getIdStatus() == 4 || checkOutList.get(i).getIdStatus() == 5) {%>
                                <div class="tm-status-circle cancelled"></div>
                                <%=status%>
                                <%}%>
                            </td>
                            <td>
                                <b><%=AccountService.getAccountById(String.valueOf(checkOutList.get(i).getIdA())).getFullName()%>
                                </b></td>
                            <td><b><%=checkOutList.get(i).getAddress()%>
                            </b></td>
                            <td><%=checkOutList.get(i).getOrderDate()%>
                            </td>
                            <td><% if (checkOutList.get(i).getConfirmDate() != null) {%>
                                <%=checkOutList.get(i).getConfirmDate()%>
                                <%}%>
                            </td>
                            <td><% if (checkOutList.get(i).getReceivedDate() != null) {%>
                                <%=checkOutList.get(i).getReceivedDate()%>
                                <%}%>
                            </td>
                            <% if (checkOutList.get(i).getIdStatus() == 0) {%>
                            <td><p href=""
                                   class="btn btn-primary"
                                   style="padding: 10px;">Chờ xác nhận</p>
                            </td>
                            <%}%>
                            <% if (checkOutList.get(i).getIdStatus() == 1) {%>
                            <td><p href=""
                                   class="btn btn-primary"
                                   style="padding: 10px;">Chờ xác nhận hoàn thành</p>
                            </td>
                            <%}%>
                            <% if (checkOutList.get(i).getIdStatus() == 3) {%>
                            <td><p href=""
                                   class="btn btn-primary"
                                   style="padding: 10px;">Đã hoàn thành</p>
                            </td>
                            <%}%>
                            <% if (checkOutList.get(i).getIdStatus() == 4) {%>
                            <td><p href=""
                                   class="btn btn-primary"
                                   style="padding: 10px;">Chờ xác nhận hủy</p>
                            </td>
                            <%}%>
                            <% if (checkOutList.get(i).getIdStatus() == 5) {%>
                            <td><p href=""
                                   class="btn btn-primary"
                                   style="padding: 10px;">Đã hủy</p>
                            </td>
                            <%}%>
                        </tr>
                        <%}%>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <div class="tm-footer row tm-mt-small">
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
    </div>
    <script src="./js/jquery-3.3.1.min.js"></script>
    <!-- https://jquery.com/download/ -->
    <script src="./js/bootstrap.min.js"></script>
    <!-- https://getbootstrap.com/ -->
</body>
</html>
