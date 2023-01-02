<%@ page import="java.util.List" %>
<%@ page import="qht.shopmypham.com.vn.model.Account" %>
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
        <% Account acc = (Account) request.getAttribute("acc");
            Account accSeesion = (Account) request.getSession().getAttribute("a");
        %>
        <div class="row tm-content-row">

            <div class="tm-block-col tm-col-avatar">
                <div class="tm-bg-primary-dark tm-block tm-block-avatar" style="height: 490px">
                    <h2 class="tm-block-title">Ảnh đại diện</h2>
                    <div class="tm-avatar-container">
                        <img
                                src="<%=acc.getImg()%>"
                                alt="Avatar"
                                class="tm-avatar img-fluid mb-4"
                        />
                        <a href="#" class="tm-avatar-delete-link">
                            <i class="far fa-trash-alt tm-product-delete-icon"></i>
                        </a>
                    </div>
                    <button class="btn btn-primary btn-block text-uppercase">
                        Cập nhật ảnh mới
                    </button>
                </div>
            </div>
            <div class="tm-block-col tm-col-account-settings">
                <div class="tm-bg-primary-dark tm-block tm-block-settings">
                    <h2 class="tm-block-title">Cài đặt tài khoản</h2>
                    <form action="admin-account-edit" method="post" class="tm-signup-form row">
                        <input value="<%=acc.getIdA()%>" name="aid" type="hidden">
                        <input value="<%=accSeesion.getIdA()%>" name="aidSecsion" type="hidden">

                        <div class="form-group col-lg-6">
                            <label for="name">Tên</label>
                            <input
                                    id="name"
                                    name="name"
                                    value="<%=acc.getFullName()%>"
                                    type="text"
                                    class="form-control validate"
                            />
                        </div>
                        <div class="form-group col-lg-6">
                            <label for="email">E-mail</label>
                            <input
                                    id="email"
                                    name="email"
                                    value="<%=acc.getEmail()%>"
                                    type="email"
                                    class="form-control validate"

                            />
                        </div>
                        <div class="form-group col-lg-6">

                            <label for="phone">Số điện thoại</label>
                            <input
                                    id="phone"
                                    name="phone"
                                    value="<%=acc.getPhone()%>"
                                    type="tel"
                                    class="form-control validate"
                            />
                            <label style="margin-top: 18px;">Địa chỉ</label>
                            <textarea
                                    class="form-control validate tm-small"
                                    rows="5"
                                    name="address"
                                    required
                                    style="height: 210px"
                            ><%=acc.getAddress()%></textarea>
                        </div>
                        <div class="form-group col-lg-6">
                            <label for="name">Quyền</label>
                            <div
                                    class="custom-control custom-checkbox d-flex align-items-center justify-content-between"
                            >
                                <input
                                        type="checkbox"
                                        name="orderManage"
                                        <%if (acc.getOrderManage() == 1) {%>
                                        checked <%}%>
                                        value="<%=acc.getOrderManage()%>"
                                        id="derparment1"
                                /><label class="margin-top-check" for="derparment1" style="margin-right: 110px;"
                            >Quản lý đơn hàng</label
                            >
                            </div>
                            <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between"
                            >
                                <input
                                        type="checkbox"
                                        name="infoCompanyManage"
                                        <%if (acc.getInfoCompanyManage() == 1) {%>
                                        checked <%}%>
                                        value="<%=acc.getInfoCompanyManage()%>"
                                        id="derparment2"
                                /><label class="margin-top-check" for="derparment2" style="margin-right: 42px"
                            >Quản lý thông tin cửa hàng</label
                            >
                            </div>
                            <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between"
                            >
                                <input
                                        type="checkbox"
                                        name="productManage"
                                        <%if (acc.getProductManage() == 1) {%>
                                        checked <%}%>
                                        value="<%=acc.getProductManage()%>"
                                        id="derparment3"
                                /><label class="margin-top-check" for="derparment3" style="margin-right: 104px"
                            >Quản lý sản phẩm</label
                            >
                            </div>
                            <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between"
                            >
                                <input
                                        type="checkbox"
                                        name="accountManage"
                                        <%if (acc.getAccountManage() == 1) {%>
                                        checked <%}%>
                                        value="<%=acc.getAccountManage()%>"
                                        id="derparment4"
                                /><label class="margin-top-check" for="derparment4" style="margin-right: 109px;"
                            >Quản lý tài khoản</label
                            >
                            </div>
                            <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between "
                            >
                                <input
                                        type="checkbox"
                                        name="blogManage"
                                        <%if (acc.getBlogManage() == 1) {%>
                                        checked <%}%>
                                        value="<%=acc.getBlogManage()%>"
                                        id="derparment5"
                                /><label class="margin-top-check" for="derparment5" style="margin-right: 125px"
                            >Quản lý bản tin</label
                            >
                            </div>
                            <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between"
                            >
                                <input
                                        type="checkbox"
                                        name="contactManage"
                                        <%if (acc.getContactManage() == 1) {%>
                                        checked <%}%>
                                        value="<%=acc.getContactManage()%>"
                                        id="derparment6"
                                /><label class="margin-top-check" for="derparment6" style="margin-right: 128px"
                            >Quản lý liên hệ</label
                            >
                            </div>
                            <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between"
                            >
                                <input
                                        type="checkbox"
                                        name="subscibeManage"
                                        <%if (acc.getSubscibeManage() == 1) {%>
                                        checked <%}%>
                                        value="<%=acc.getSubscibeManage()%>"
                                        id="derparment7"
                                /><label class="margin-top-check" for="derparment7" style="    margin-right: 4px"
                            >Quản lý đăng ký nhận thông báo</label
                            >

                            </div>
                            <div class="custom-control custom-checkbox d-flex align-items-center justify-content-between"
                            >
                                <input
                                        type="checkbox"
                                        name="faqsManage"
                                        <%if (acc.getFaqsManage() == 1) {%>
                                        checked <%}%>
                                        value="<%=acc.getFaqsManage()%>"
                                        id="derparment8"
                                /><label class="margin-top-check" for="derparment8" style="margin-right: 137px;"
                            >Quản lý FAQs</label
                            >

                            </div>
                        </div>
                        <div class="form-group col-lg-6">
                            <label class="tm-hide-sm">&nbsp;</label>
                            <a href="admin-account-reset-password?idA=<%=acc.getIdA()%>"
                               class="btn btn-primary btn-block text-uppercase"
                               style="color: white"
                            >
                                Cấp lại mật khẩu
                            </a>
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
                        <div class="col-12">
                            <a
                                    href="admin-account-delete?idA=<%=acc.getIdA()%>"
                                    class="btn btn-primary btn-block text-uppercase"
                            >
                                Xóa tài khoản
                            </a>
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
<script>
    var derparment1 = document.getElementById('derparment1');
    derparment1.onclick = function (e) {
        if (this.checked) {
            derparment1.value = 1;
        }
    };
    var derparment2 = document.getElementById('derparment2');
    derparment2.onclick = function (e) {
        if (this.checked) {
            derparment2.value = 1;
        }
    };
    var derparment3 = document.getElementById('derparment3');
    derparment3.onclick = function (e) {
        if (this.checked) {
            derparment3.value = 1;
        }
    };
    var derparment4 = document.getElementById('derparment4');
    derparment4.onclick = function (e) {
        if (this.checked) {
            derparment4.value = 1;
        }
    };
    var derparment5 = document.getElementById('derparment5');
    derparment5.onclick = function (e) {
        if (this.checked) {
            derparment5.value = 1;
        }
    };
    var derparment6 = document.getElementById('derparment6');
    derparment6.onclick = function (e) {
        if (this.checked) {
            derparment6.value = 1;
        }
    };
    var derparment7 = document.getElementById('derparment7');
    derparment7.onclick = function (e) {
        if (this.checked) {
            derparment7.value = 1;
        }
    };
    var derparment8 = document.getElementById('derparment8');
    derparment8.onclick = function (e) {
        if (this.checked) {
            derparment8.value = 1;
        }
    };
</script>


</body>
</html>
