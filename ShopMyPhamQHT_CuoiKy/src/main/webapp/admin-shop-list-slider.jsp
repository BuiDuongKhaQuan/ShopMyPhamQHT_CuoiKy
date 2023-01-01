<%@ page import="java.util.List" %>
<%@ page import="qht.shopmypham.com.vn.model.Slider" %>
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
    <% List<Slider> sliderList = (List<Slider>) request.getAttribute("sliderList");
    %>
    <div class="container mt-5">
        <!-- row -->
        <div class="row tm-content-row">
            <div class="col-sm-12 col-md-12 col-lg-8 col-xl-20 tm-block-col">
                <div class="tm-bg-primary-dark tm-block tm-block-products">
                    <h2 class="tm-block-title">Danh sách ảnh trình chiếu</h2>
                    <div class="tm-product-table-container">
                        <table class="table table-hover tm-table-small tm-product-table">
                            <thead>
                            <tr>
                                <th scope="col">Số TT</th>
                                <th scope="col">Ảnh</th>
                                <th scope="col">Xóa</th>

                            </tr>
                            </thead>
                            <tbody>
                            <%
                                int a = 0;
                                for (Slider s : sliderList) {
                                    a++;
                            %>
                            <tr>
                                <td>
                                    <%=a%>
                                </td>
                                <td><a href="admin-shop-edit-slider?idSl=<%=s.getIdSl()%>" style="color: white">

                                    <img src="<%=s.getImg()%>" style="max-width: 905px; max-height: 400px;">

                                </a>
                                </td>
                                <td>
                                    <a href="admin-shop-delete-slider?idSl=<%=s.getIdSl()%>" class="tm-product-delete-link">
                                        <i class="far fa-trash-alt tm-product-delete-icon"></i>
                                    </a>
                                </td>
                            </tr>
                            <%}%>
                            </tbody>
                        </table>
                    </div>
                    <a
                            href="admin-shop-add-slider"
                            class="btn btn-primary btn-block text-uppercase mb-3"
                    >Thêm ảnh mới</a
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
