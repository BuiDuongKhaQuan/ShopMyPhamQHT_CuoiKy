<%@ page import="java.util.List" %>
<%@ page import="qht.shopmypham.com.vn.model.Account" %>
<%@ page import="qht.shopmypham.com.vn.service.AccountService" %>
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
    <div class="container mt-5">
        <!-- row -->
        <% Trademark trademark = (Trademark) request.getAttribute("trademark");
        %>
        <div class="row tm-content-row">

            <div class="tm-block-col tm-col-account-settings1">
                <div class="tm-bg-primary-dark tm-block tm-block-settings">
                    <h2 class="tm-block-title">Chỉnh sửa thông tin nhà sản xuất</h2>
                    <form action="admin-shop-edit-trademark" method="post" class="tm-signup-form row">
                        <input value="<%=trademark.getIdTrademark()%>" name="idT" type="hidden">
                        <div class="form-group col-lg-6">
                            <label for="name">Tên</label>
                            <input
                                    id="name"
                                    name="name"
                                    value="<%=trademark.getName()%>"
                                    type="text"
                                    class="form-control validate"
                            />
                        </div>
                        <div class="form-group col-lg-6">
                            <label for="email">Số điện thoại</label>
                            <input
                                    id="email"
                                    name="phone"
                                    value="<%=trademark.getPhone()%>"
                                    type="text"
                                    class="form-control validate"

                            />
                        </div>

                        <div class="form-group col-lg-6">
                            <label for="phone">Logo</label>
                            <input
                                    id="phone"
                                    name="logo"
                                    value="<%=trademark.getLogo()%>"
                                    type="tel"
                                    class="form-control validate"
                            />
                        </div>
                        <div class="form-group col-lg-6">
                            <label for="phone">Địa chỉ</label>
                            <input
                                    id="address"
                                    name="address"
                                    value="<%=trademark.getAddress()%>"
                                    type="tel"
                                    class="form-control validate"
                            />
                        </div>
                        <div class="form-group col-lg-6">
                            <label class="tm-hide-sm">&nbsp;</label>
                            <button
                                    type="submit"
                                    class="btn btn-primary btn-block text-uppercase"
                            >
                                Cập nhật hồ sơ
                            </button>
                        </div>
                        <div class="form-group col-lg-6">
                            <label class="tm-hide-sm">&nbsp;</label>
                            <a
                                    href="admin-shop-delete-trademark?idT=<%=trademark.getIdTrademark()%>"
                                    class="btn btn-primary btn-block text-uppercase"
                            >
                                Xóa
                            </a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

</div>

<script src="./js/jquery-3.3.1.min.js"></script>
<!-- https://jquery.com/download/ -->
<script src="./js/bootstrap.min.js"></script>
<!-- https://getbootstrap.com/ -->
</body>
</html>
