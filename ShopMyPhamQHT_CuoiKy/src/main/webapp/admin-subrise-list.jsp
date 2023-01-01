<%@ page import="java.util.List" %>
<%@ page import="qht.shopmypham.com.vn.model.CheckOut" %>
<%@ page import="qht.shopmypham.com.vn.service.AccountService" %>
<%@ page import="qht.shopmypham.com.vn.model.Account" %>
<%@ page import="qht.shopmypham.com.vn.model.Contact" %>
<%@ page import="qht.shopmypham.com.vn.model.Subscibe" %>
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
    <!--
       Product Admin CSS Template
       https://templatemo.com/tm-524-product-admin
       -->
</head>

<body id="reportsPage">
<div class="" id="home">
    <jsp:include page="admin-header.jsp"></jsp:include>
    <div class="container">
        <div class="row">
            <div class="col">
                <p class="text-white mt-5 mb-5">
                </p>
            </div>
        </div>
        <!-- row -->
        <div class="row tm-content-row">
            <div class="col-sm-12 col-md-12 col-lg-8 col-xl-16 tm-block-col">
                <div class="tm-bg-primary-dark tm-block tm-block-products">
                    <h2 class="tm-block-title">Danh sách đăng ký</h2>
                    <div class="tm-product-table-container1">
                        <table class="table table-hover tm-table-small tm-product-table">
                            <thead>
                            <tr>
                                <th scope="col">SỐ TT</th>
                                <th scope="col">TÊN</th>
                                <th scope="col">EMAIL</th>
                                <th scope="col">THỜI GIAN</th>
                                <th scope="col"></th>
                            </tr>
                            </thead>
                            <tbody>
                            <% List<Subscibe> list = (List<Subscibe>) request.getAttribute("subscibe");
                                int a = 0;
                                for (Subscibe s : list) {
                                    a++;
                            %>

                            <tr>
                                <th scope="row"><b><%=a%>
                                </b></th>
                                <td>
                                    <%
                                        if (s.getNameQuest() == null) {
                                    %>
                                    <a style="text-decoration: none; color: white">Ẩn danh
                                    </a>
                                    <%
                                        }
                                        if (s.getNameQuest() != null) {
                                    %>

                                    <a href="" style="text-decoration: none; color: white"><%=s.getNameQuest()%>
                                    </a>
                                    <%}%>
                                </td>
                                <td><b><%=s.getEmailQuest()%>
                                </b></td>
                                <td><b><%=s.getTime()%>
                                </b></td>
                                <td><a href="admin-subrise-delete?idSc=<%=s.getIdSc()%>"
                                       class="tm-product-delete-link"
                                       style="padding: 10px;"><i
                                        class="far fa-trash-alt tm-product-delete-icon"></i></a>
                                </td>
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
