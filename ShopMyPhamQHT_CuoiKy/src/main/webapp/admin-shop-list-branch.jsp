<%@ page import="java.util.List" %>
<%@ page import="qht.shopmypham.com.vn.model.BranchShop" %>
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
    <link href="https://cdn.jsdelivr.net/gh/hung1001/font-awesome-pro-v6@44659d9/css/all.min.css" rel="stylesheet" type="text/css" />
    <!--
        Product Admin CSS Template
        https://templatemo.com/tm-524-product-admin
        -->
</head>

<body id="reportsPage">
<div class="" id="home">
    <jsp:include page="admin-header.jsp"></jsp:include>

    <!--  -->
    <% List<BranchShop> branchShopList = (List<BranchShop>) request.getAttribute("branchShopList");

    %>
    <div class="container mt-5">
        <!-- row -->
        <div class="row tm-content-row">
            <div class="col-sm-12 col-md-12 col-lg-8 col-xl-16 tm-block-col">
                <div class="tm-bg-primary-dark tm-block tm-block-products">
                    <h2 class="tm-block-title">Danh sách chi nhánh</h2>
                    <div class="tm-product-table-container">
                        <table class="table table-hover tm-table-small tm-product-table">
                            <thead>
                            <tr>
                                <th scope="col">TÊN CHI NHÁNH</th>
                                <th scope="col">EMAIL</th>
                                <th scope="col">SỐ ĐIỆN THOẠI</th>
                                <th scope="col">ĐỊA CHỈ</th>

                            </tr>
                            </thead>
                            <tbody>
                            <%
                                for (BranchShop bs : branchShopList) {%>

                            <tr>
                                <td>
                                    <a href="admin-shop-edit-branch?idB=<%=bs.getIdB()%>" style="color: white">
                                        <%=bs.getBranchName()%>
                                    </a>
                                </td>
                                <td><%=bs.getBranchEmail()%>
                                </td>
                                <td><%=bs.getBranchPhone()%>
                                </td>
                                <td><%=bs.getBranchAddress()%>
                                </td>
                            </tr>
                            <%}%>
                            </tbody>
                        </table>
                    </div>
                    <!-- table container -->
                    <a
                            href="admin-shop-add-branch"
                            class="btn btn-primary btn-block text-uppercase mb-3"
                    >Thêm chi nhánh mới</a
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
