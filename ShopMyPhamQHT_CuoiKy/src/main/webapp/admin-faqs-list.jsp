<%@ page import="java.util.List" %>
<%@ page import="qht.shopmypham.com.vn.service.AccountService" %>
<%@ page import="qht.shopmypham.com.vn.model.*" %>
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
                <div class="tm-bg-primary-dark tm-block tm-block-products tm-block-faqs">
                    <div style="display: flex; justify-content: space-between">
                        <h2 class="tm-block-title">Danh sách câu hỏi</h2>
                        <form class="tm-block-title" action="admin-faqs-search" method="get"
                              style="border: 1px solid var(--border-color); ">
                            <% String txtInput1 = (String) request.getAttribute("txtSearch1"); %>
                            <div class="input-group">
                                <%if (txtInput1 != null) {%>
                                <input
                                        type="text"
                                        name="question"
                                        class="form-control"
                                        placeholder="Nhập câu hỏi"
                                        value="<%=txtInput1%>"
                                />
                                <%} else {%>
                                <input
                                        type="text"
                                        name="question"
                                        class="form-control"
                                        placeholder="Nhập câu hỏi"
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
                                <th scope="col">SỐ TT</th>
                                <th scope="col">CÂU HỎI</th>
                                <th scope="col"></th>
                            </tr>
                            </thead>
                            <tbody>
                            <% List<FAQs> faQsList = (List<FAQs>) request.getAttribute("faQsList");
                                int a = 0;
                                for (FAQs f : faQsList) {
                                    a++;
                            %>

                            <tr>
                                <th scope="row"><b><%=a%>
                                </b></th>
                                <td>
                                    <a href="admin-faqs-edit?idF=<%=f.getIdF()%>"
                                       style="text-decoration: none; color: white"><%=f.getQuestion()%>
                                    </a>
                                </td>
                                <td><a href="admin-faqs-delete?idF=<%=f.getIdF()%>"
                                       class="tm-product-delete-link"
                                       style="padding: 10px;"><i
                                        class="far fa-trash-alt tm-product-delete-icon"></i></a>
                                </td>
                            </tr>
                            <%}%>
                            </tbody>
                        </table>
                    </div>
                    <a
                            href="admin-faqs-add"
                            class="btn btn-primary btn-block text-uppercase mb-3"
                    >Thêm câu hỏi mới</a
                    >
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
