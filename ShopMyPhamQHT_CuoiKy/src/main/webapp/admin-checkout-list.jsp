<%@ page import="java.util.List" %>
<%@ page import="qht.shopmypham.com.vn.model.CheckOut" %>
<%@ page import="qht.shopmypham.com.vn.service.AccountService" %>
<%@ page import="qht.shopmypham.com.vn.model.Account" %>
<%@ page import="java.util.Arrays" %>
<%@ page import="java.util.Collections" %>
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
    <title>Product Admin - Dashboard</title>
    <link
            rel="stylesheet"
            href="https://fonts.googleapis.com/css?family=Roboto:400,700"
    />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- https://fonts.google.com/specimen/Roboto -->
    <link rel="stylesheet" href="./css/fontawesome.min.css"/>
    <!-- https://fontawesome.com/ -->
    <link rel="stylesheet" href="./css/bootstrap.min.css"/>
    <!-- https://getbootstrap.com/ -->
    <link rel="stylesheet" href="./css/templatemo-style.css"/>
    <link href="https://cdn.jsdelivr.net/gh/hung1001/font-awesome-pro-v6@44659d9/css/all.min.css" rel="stylesheet"
          type="text/css"/>
</head>

<body id="reportsPage">
<div class="" id="home">
    <jsp:include page="admin-header.jsp"></jsp:include>
        <% List<CheckOut> checkOutList = (List<CheckOut>) request.getAttribute("checkOutList");%>
    <div class="container">
        <div class="row">
            <div class="col">
                <p class="text-white mt-5 mb-5">
                    Chào mừng quay trở lại, <b>Admin</b>
                </p>
            </div>
        </div>
        <!-- row -->
        <div class="row tm-content-row">

            <div class="col-sm-12 col-md-12 col-lg-6 col-xl-6 tm-block-col">
                <div
                        class="tm-bg-primary-dark tm-block tm-block-taller tm-block-overflow"
                >
                    <h2 class="tm-block-title">Danh sách thông báo</h2>
                    <div class="tm-notification-items">
                        <% Collections.reverse(checkOutList);
                            for (CheckOut co : checkOutList) {
                                Account acc = AccountService.getAccountById(String.valueOf(co.getIdA()));
                        %>
                        <div class="media tm-notification-item">
                            <div class="tm-gray-circle">
                                <img
                                        src="<%=acc.getImg()%>"
                                        alt="Avatar Image"
                                        class="rounded-circle"
                                        style="width: 80px; height: 80px"
                                />
                            </div>
                            <div class="media-body">
                                <p class="mb-2">
                                    <b><%=acc.getFullName()%>
                                    </b> đã đặt hàng
                                    <%--                                    <a href="#" class="tm-notification-link"--%>
                                    <%--                                    >product updates</a--%>
                                    <%--                                    >. Check new orders.--%>
                                </p>
                                <span class="tm-small tm-text-color-secondary"
                                ><%=co.getOrderDate()%>.</span
                                >
                            </div>
                        </div>
                        <%}%>
                    </div>
                </div>
            </div>
            <div class="col-sm-12 col-md-12 col-lg-8 col-xl-16 tm-block-col">
                <div class="tm-bg-primary-dark tm-block tm-block-products">
                    <div style="display: flex; justify-content: space-between">
                        <h2 class="tm-block-title">Danh sách đơn hàng</h2>
                        <form class="tm-block-title" action="admin-checkout-search" method="get"
                              style="border: 1px solid var(--border-color); ">
                            <% String txtInput1 = (String) request.getAttribute("txtSearch1"); %>
                            <div class="input-group">
                                <%if (txtInput1 != null) {%>
                                <input
                                        type="text"
                                        name="id"
                                        class="form-control"
                                        placeholder="Nhập mã đơn hàng"
                                        value="<%=txtInput1%>"
                                />
                                <%} else {%>
                                <input
                                        type="text"
                                        name="id"
                                        class="form-control"
                                        placeholder="Nhập mã đơn hàng"
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
                            <%
                                for (CheckOut co : checkOutList) {
                                    String status = "";
                                    if (co.getIdStatus() == 0) {
                                        status = "Chờ xác nhận";
                                    }
                                    if (co.getIdStatus() == 1) {
                                        status = "Đang vận chuyển";
                                    }
                                    if (co.getIdStatus() == 2) {
                                        status = "Hoàn thành";
                                    }
                                    if (co.getIdStatus() == 3) {
                                        status = "Đã hoàn thành";
                                    }
                                    if (co.getIdStatus() == 4) {
                                        status = "Chờ xác nhận hủy";
                                    }
                                    if (co.getIdStatus() == 5) {
                                        status = "Đã hủy";
                                    }
                            %>

                            <tr>
                                <th scope="row"><b>#<%=co.getIdCk()%>
                                </b></th>
                                <td>
                                    <%if (co.getIdStatus() == 0) {%>
                                    <div class="tm-status-circle pending"></div>
                                    <%=status%>
                                    <%}%>
                                    <%if (co.getIdStatus() == 1 || co.getIdStatus() == 2 || co.getIdStatus() == 3) {%>
                                    <div class="tm-status-circle moving"></div>
                                    <%=status%>
                                    <%}%>
                                    <%if (co.getIdStatus() == 4 || co.getIdStatus() == 5) {%>
                                    <div class="tm-status-circle cancelled"></div>
                                    <%=status%>
                                    <%}%>
                                </td>
                                <td><b><%=AccountService.getAccountById(String.valueOf(co.getIdA())).getFullName()%>
                                </b></td>
                                <td><b><%=co.getAddress()%>
                                </b></td>
                                <td><%=co.getOrderDate()%>
                                </td>
                                <td><% if (co.getConfirmDate() != null) {%>
                                    <%=co.getConfirmDate()%>
                                    <%}%>
                                </td>
                                <td><% if (co.getReceivedDate() != null) {%>
                                    <%=co.getReceivedDate()%>
                                    <%}%>
                                </td>
                                <% if (co.getIdStatus() == 0) {%>
                                <td><a href="action-checkout?command=ok&idCk=<%=co.getIdCk()%>" class="btn btn-primary"
                                       style="padding: 10px;">Xác nhận</a>
                                </td>
                                <%}%>
                                <% if (co.getIdStatus() == 1) {%>
                                <td><a href="action-checkout?command=confirm&idCk=<%=co.getIdCk()%>"
                                       class="btn btn-primary"
                                       style="padding: 10px;">Hoàn thành</a>
                                </td>
                                <%}%>
                                <% if (co.getIdStatus() == 3) {%>
                                <td>
                                </td>
                                <%}%>
                                <% if (co.getIdStatus() == 4) {%>
                                <td><a href="action-checkout?command=cance&idCk=<%=co.getIdCk()%>"
                                       class="btn btn-primary"
                                       style="padding: 10px;">Xác nhận hủy</a>
                                </td>
                                <%}%>
                                <% if (co.getIdStatus() == 5) {%>
                                <td>
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
    <script src="./js/jquery-3.3.1.min.js"></script>
    <!-- https://jquery.com/download/ -->
    <script src="./js/moment.min.js"></script>
    <!-- https://momentjs.com/ -->
    <script src="./js/Chart.min.js"></script>
    <!-- http://www.chartjs.org/docs/latest/ -->
    <script src="./js/bootstrap.min.js"></script>
    <!-- https://getbootstrap.com/ -->
    <script src="./js/tooplate-scripts.js"></script>

    <script>
        Chart.defaults.global.defaultFontColor = "white";
        let ctxLine,
            ctxBar,
            ctxPie,
            optionsLine,
            optionsBar,
            optionsPie,
            configLine,
            configBar,
            configPie,
            lineChart;
        barChart, pieChart;
        // DOM is ready
        $(function () {
            drawLineChart(); // Line Chart
            drawBarChart(); // Bar Chart
            drawPieChart(); // Pie Chart

            $(window).resize(function () {
                updateLineChart();
                updateBarChart();
            });
        });
    </script>
</body>
</html>
