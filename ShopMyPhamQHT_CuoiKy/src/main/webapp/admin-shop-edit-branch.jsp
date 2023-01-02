<%@ page import="qht.shopmypham.com.vn.model.Product" %>
<%@ page import="qht.shopmypham.com.vn.model.Categories" %>
<%@ page import="java.util.List" %>
<%@ page import="java.text.NumberFormat" %>
<%@ page import="qht.shopmypham.com.vn.service.TrademarkService" %>
<%@ page import="qht.shopmypham.com.vn.model.BranchShop" %>
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
    <title>Edit Product - Dashboard Admin</title>
    <link
            rel="stylesheet"
            href="https://fonts.googleapis.com/css?family=Roboto:400,700"
    />
    <!-- https://fonts.google.com/specimen/Roboto -->
    <link rel="stylesheet" href="./css/fontawesome.min.css"/>
    <!-- https://fontawesome.com/ -->
    <link rel="stylesheet" href="./jquery-ui-datepicker/jquery-ui.min.css" type="text/css"/>
    <!-- http://api.jqueryui.com/datepicker/ -->
    <link rel="stylesheet" href="./css/bootstrap.min.css"/>
    <!-- https://getbootstrap.com/ -->
    <link rel="stylesheet" href="./css/templatemo-style.css">
    <link href="https://cdn.jsdelivr.net/gh/hung1001/font-awesome-pro-v6@44659d9/css/all.min.css" rel="stylesheet" type="text/css" />
    <!--
        Product Admin CSS Template
        https://templatemo.com/tm-524-product-admin
        -->
</head>

<body>
<jsp:include page="admin-header.jsp"></jsp:include>


<%BranchShop branchShop = (BranchShop) request.getAttribute("branchShop");%>
<!--  -->
<div class="container container1 tm-mt-big tm-mb-big">
    <div class="row">
        <div class="col-xl-16 col-lg-10 col-md-12 col-sm-12 mx-auto">
            <div class="row tm-content-row">
                <div class="tm-block-col tm-col-account-settings" style="margin: 0 auto;">
                    <div class="tm-bg-primary-dark tm-block tm-block-settings">
                        <h2 class="tm-block-title">Thông tin chi nhánh</h2>
                        <form action="admin-shop-edit-branch" method="post" class="tm-signup-form row">
                            <input value="<%=branchShop.getIdB()%>" name="idB" type="hidden">
                            <div class="form-group col-lg-6">
                                <label for="name">Tên chi nhánh</label>
                                <input
                                        id="name"
                                        name="name"
                                        value="<%=branchShop.getBranchName()%>"
                                        type="text"
                                        class="form-control validate"
                                />
                            </div>
                            <div class="form-group col-lg-6">
                                <label for="email">Email</label>
                                <input
                                        id="email"
                                        name="email"
                                        value="<%=branchShop.getBranchEmail()%>"
                                        type="text"
                                        class="form-control validate"

                                />
                            </div>
                            <div class="form-group col-lg-6">
                                <label for="phone">Địa chỉ</label>
                                <input
                                        id="phone"
                                        name="address"
                                        value="<%=branchShop.getBranchAddress()%>"
                                        type="price"
                                        class="form-control validate"
                                />
                            </div>
                            <div class="form-group col-lg-6">
                                <label for="phone">Số điện thoại</label>
                                <input
                                        id="phone1"
                                        name="phone"
                                        value="<%=branchShop.getBranchPhone()%>"
                                        type="price"
                                        class="form-control validate"
                                />
                            </div>
                            <div class="form-group col-lg-6">
                                <label
                                        for="description"
                                >Lời mời khách hàng</label
                                >
                                <textarea
                                        class="form-control validate tm-small"
                                        rows="5"
                                        name="text"
                                        required
                                        style="height: 200px"
                                ><%=branchShop.getTextSubrise()%></textarea>
                            </div>

                            <div class="form-group col-lg-6">
                                <label class="tm-hide-sm">&nbsp;</label>
                                <button
                                        type="submit"
                                        class="btn btn-primary btn-block text-uppercase"
                                >
                                    Lưu chỉnh sửa
                                </button>
                            </div>
                            <div class="col-12">
                                <a
                                        href="admin-shop-delete-branch?idB=<%=branchShop.getIdB()%>"
                                        class="btn btn-primary btn-block text-uppercase"
                                >
                                    Xóa chi nhánh
                                </a>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<footer class="tm-footer row tm-mt-small">
    <div class="col-12 font-weight-light">
        <p class="text-center text-white mb-0 px-4 small">
            Copyright &copy; <b>2021</b> All rights reserved.

            Design: <a rel="nofollow noopener" href="https://templatemo.com" class="tm-footer-link">Template Mo</a>
        </p>
    </div>
</footer>

<script src="./js/jquery-3.3.1.min.js"></script>
<!-- https://jquery.com/download/ -->
<script src="./jquery-ui-datepicker/jquery-ui.min.js"></script>
<!-- https://jqueryui.com/download/ -->
<script src="./js/bootstrap.min.js"></script>
<!-- https://getbootstrap.com/ -->
<script>
    $(function () {
        $("#expire_date").datepicker({
            defaultDate: "10/22/2020"
        });
    });
</script>
</body>
</html>
