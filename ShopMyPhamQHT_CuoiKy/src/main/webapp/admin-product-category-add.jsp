<%@ page import="java.util.List" %>
<%@ page import="qht.shopmypham.com.vn.model.Categories" %>
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
        <div class="row tm-content-row">

            <div class="tm-block-col tm-col-avatar">
                <div class="tm-bg-primary-dark tm-block tm-block-avatar" style="height: 490px">
                    <h2 class="tm-block-title">Ảnh đại diện</h2>
                    <div class="tm-avatar-container">
                        <img
                                src=""
                                alt="Avatar"
                                class="tm-avatar img-fluid mb-4"
                        />
                    </div>
                </div>
            </div>
            <div class="tm-block-col tm-col-account-settings">
                <div class="tm-bg-primary-dark tm-block tm-block-settings">
                    <h2 class="tm-block-title">Thông tin</h2>
                    <form action="admin-product-category-add" method="post" class="tm-signup-form row">
                        <div class="form-group col-lg-6">
                            <label for="name">Tên</label>
                            <input
                                    id="name"
                                    name="name"
                                    type="text"
                                    class="form-control validate"
                            />
                        </div>
                        <div class="form-group col-lg-6">
                            <label for="name">Ảnh đại diện</label>
                            <input
                                    id="img"
                                    name="img"
                                    type="text"
                                    class="form-control validate"
                            />
                        </div>
                        <div class="form-group col-lg-6">
                            <label class="tm-hide-sm">&nbsp;</label>
                            <button
                                    type="submit"
                                    class="btn btn-primary btn-block text-uppercase"
                            >
                                Cập nhật
                            </button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <footer class="tm-footer row tm-mt-small" style="margin-top: 42px;">
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
