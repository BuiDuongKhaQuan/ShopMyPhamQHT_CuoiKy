<%@ page import="java.util.List" %>
<%@ page import="qht.shopmypham.com.vn.model.CheckOut" %>
<%@ page import="qht.shopmypham.com.vn.service.AccountService" %>
<%@ page import="qht.shopmypham.com.vn.model.Account" %>
<%@ page import="java.util.Arrays" %>
<%@ page import="java.util.Collections" %>
<%@ page import="qht.shopmypham.com.vn.model.ListProductByCheckOut" %>
<%@ page import="java.text.NumberFormat" %>
<%@ page import="qht.shopmypham.com.vn.model.Product" %>
<%@ page import="qht.shopmypham.com.vn.service.ProductService" %>
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
    <div class="container">
        <!-- row -->
        <div class="row tm-content-row">
            <section class="h-100 gradient-custom">
                <div class="container py-5 h-100">
                    <div class="row d-flex justify-content-center align-items-center h-100">
                        <div class="col-lg-10 col-xl-80">
                            <div class="card" style="border-radius: 10px;">
                                <% int total1 = 0;
                                    NumberFormat nf = NumberFormat.getInstance();
                                    nf.setMinimumFractionDigits(0);
                                    CheckOut checkOut = (CheckOut) request.getAttribute("checkOut");
                                    List<ListProductByCheckOut> productByCheckOutList = (List<ListProductByCheckOut>) request.getAttribute("listProductByCheckOuts");
                                %>
                                <div class="card-body p-4">
                                    <div class="d-flex justify-content-between align-items-center mb-4">
                                        <p class="lead fw-normal mb-0" style="color: #a8729a;">Sản phẩm</p>
                                        <p class="small text-muted mb-0">Mã đơn :
                                            #<%=checkOut.getIdCk()%>
                                        </p>
                                    </div>
                                    <%
                                        for (ListProductByCheckOut productByCheckOut : productByCheckOutList) {
                                            Product product = ProductService.getProductById(String.valueOf(productByCheckOut.getIdP()));
                                            total1 += product.getPrice() * productByCheckOut.getQuantity();
                                    %>
                                    <div class="card shadow-0 border mb-4">
                                        <div class="card-body">
                                            <div class="row">
                                                <div class="col-md-2">
                                                    <img src="<%=product.getImg1()%>"
                                                         class="img-fluid" alt="Phone">
                                                </div>
                                                <div class="col-md-2 text-center d-flex justify-content-center align-items-center">
                                                    <p class="text-muted mb-0"><%=product.getName()%>
                                                    </p>
                                                </div>
                                                <div class="col-md-2 text-center d-flex justify-content-center align-items-center">
                                                    <p class="text-muted mb-0 small"></p>
                                                </div>
                                                <div class="col-md-2 text-center d-flex justify-content-center align-items-center">
                                                    <p class="text-muted mb-0 small"></p>
                                                </div>

                                                <div class="col-md-2 text-center d-flex justify-content-center align-items-center">
                                                    <p class="text-muted mb-0 small"><%=productByCheckOut.getQuantity()%>
                                                    </p>
                                                </div>
                                                <div class="col-md-2 text-center d-flex justify-content-center align-items-center">
                                                    <p class="text-muted mb-0 small"><%=nf.format(product.getPrice() * productByCheckOut.getQuantity())%>
                                                        đ</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <%}%>
                                    <div class="d-flex justify-content-between pt-2">
                                        <p class="fw-bold mb-0">Tổng giá trị sản phẩm</p>
                                        <p class="text-muted mb-0"><span class="fw-bold me-4"></span>
                                            <%=nf.format(total1)%>đ</p>
                                    </div>

                                    <div class="d-flex justify-content-between pt-2">
                                        <p class="fw-bold mb-0">Phí vận chuyển</p>
                                        <p class="text-muted mb-0"><span
                                                class="fw-bold me-4"></span>25,000đ</p>
                                    </div>
                                    <div class="d-flex justify-content-between pt-2">
                                        <p class="fw-bold mb-0">Trạng thái</p>
                                        <p class="text-muted mb-0"><span
                                                class="fw-bold me-4"></span>
                                            <% String status = "";
                                                if (checkOut.getIdStatus() == 0) {
                                                    status = "Chờ xác nhận";
                                                }
                                                if (checkOut.getIdStatus() == 1) {
                                                    status = "Đang vận chuyển";
                                                }
                                                if (checkOut.getIdStatus() == 2) {
                                                    status = "Hoàn thành";
                                                }
                                                if (checkOut.getIdStatus() == 3) {
                                                    status = "Đã hoàn thành";
                                                }
                                                if (checkOut.getIdStatus() == 4) {
                                                    status = "Chờ xác nhận hủy";
                                                }
                                                if (checkOut.getIdStatus() == 5) {
                                                    status = "Đã hủy";
                                                }%>
                                            <%=status%>
                                        </p>
                                    </div>
                                    <div class="d-flex justify-content-between pt-2">
                                        <p class="fw-bold mb-0">Ngày đặt hàng</p>
                                        <p class="text-muted mb-0"><span
                                                class="fw-bold me-4"></span><%=checkOut.getOrderDate()%>
                                        </p>
                                    </div>
                                    <div class="d-flex justify-content-between pt-2">
                                        <p class="fw-bold mb-0">Ngày xác nhận</p>
                                        <p class="text-muted mb-0"><span
                                                class="fw-bold me-4"></span>
                                            <%if (checkOut.getConfirmDate() != null) {%>
                                            <%=checkOut.getOrderDate()%>
                                            <%} else {%>
                                            Chưa có thông tin
                                            <%}%>
                                        </p>
                                    </div>
                                    <div class="d-flex justify-content-between pt-2">
                                        <p class="fw-bold mb-0">Ngày hoàn thành</p>
                                        <p class="text-muted mb-0"><span
                                                class="fw-bold me-4"></span>
                                            <%if (checkOut.getReceivedDate() != null) {%>
                                            <%=checkOut.getReceivedDate()%>
                                            <%} else {%>
                                            Chưa có thông tin
                                            <%}%>
                                        </p>
                                    </div>
                                </div>
                                <div class="card-footer border-0 px-4 py-5"
                                     style="background-color: #a8729a; border-bottom-left-radius: 10px; border-bottom-right-radius: 10px;">
                                    <h5 class="d-flex align-items-center justify-content-end text-white text-uppercase mb-0">
                                        Tổng giá trị đơn hàng: <span
                                            class="h2 mb-0 ms-2"> <%=nf.format(total1 + 25000)%>đ</span></h5>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
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
