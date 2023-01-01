<%@ page import="java.util.List" %>
<%@ page import="qht.shopmypham.com.vn.model.Trademark" %>
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
    <% List<Trademark> trademarkList = (List<Trademark>) request.getAttribute("listTrademark");

    %>
    <div class="container mt-5">
        <!-- row -->
        <div class="row tm-content-row">
            <div class="col-sm-12 col-md-12 col-lg-8 col-xl-8 tm-block-col" style="margin: 0 auto;">
                <div class="tm-bg-primary-dark tm-block tm-block-products">
                    <h2 class="tm-block-title">Danh sách đối tác</h2>
                    <div class="tm-product-table-container">
                        <table class="table table-hover tm-table-small tm-product-table">
                            <thead>
                            <tr>
                                <th scope="col">TÊN ĐỐI TÁC</th>
                                <th scope="col">PHONE</th>
                                <th scope="col">ĐỊA CHỈ</th>
                                <th scope="col"></th>
                            </tr>
                            </thead>
                            <tbody>
                            <%
                                for (Trademark t : trademarkList) {%>

                            <tr>
                                <td>
                                    <a href="admin-shop-edit-trademark?idT=<%=t.getIdTrademark()%>"
                                       style="color: white">
                                        <%=t.getName()%>
                                    </a>
                                </td>
                                <td><%=t.getPhone()%>
                                </td>
                                <td><%=t.getAddress()%>
                                </td>
                                <td>
                                    <a href="admin-shop-delete-trademark?idT=<%=t.getIdTrademark()%>"
                                       class="tm-product-delete-link">
                                        <i class="far fa-trash-alt tm-product-delete-icon"></i>
                                    </a>
                                </td>
                            </tr>
                            <%}%>
                            </tbody>
                        </table>
                    </div>
                    <!-- table container -->
                    <a
                            href="admin-shop-add-trademark"
                            class="btn btn-primary btn-block text-uppercase mb-3"
                    >Thêm đối tác</a
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
</div>

<script src="./js/jquery-3.3.1.min.js"></script>
<!-- https://jquery.com/download/ -->
<script src="./js/bootstrap.min.js"></script>
<!-- https://getbootstrap.com/ -->
</body>
</html>
