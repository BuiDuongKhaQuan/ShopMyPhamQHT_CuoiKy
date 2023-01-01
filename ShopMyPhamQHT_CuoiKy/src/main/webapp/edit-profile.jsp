<%@ page import="qht.shopmypham.com.vn.model.Categories" %>
<%@ page import="java.util.List" %>
<%@ page import="qht.shopmypham.com.vn.model.Account" %>
<%@ page import="qht.shopmypham.com.vn.service.AccountService" %>
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html lang="en">
<head>
    <meta charset="utf-8"/>
    <title>QHT - Cửa hàng mỹ phẩm QHT</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport"/>
    <meta content="Free HTML Templates" name="keywords"/>
    <meta content="Free HTML Templates" name="description"/>

    <!-- Favicon -->
    <link href="./img/favicon.png" rel="icon"/>

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.gstatic.com"/>
    <link
            href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700;800;900&display=swap"
            rel="stylesheet"
    />

    <!-- Font Awesome -->
    <link
            href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
            rel="stylesheet"
    />

    <!-- Libraries Stylesheet -->
    <link
            href="./lib/owlcarousel/assets/owl.carousel.min.css"
            rel="stylesheet"
    />

    <!-- Customized Bootstrap Stylesheet -->
    <link rel="stylesheet" href="./css/edit-profile.css"/>
    <link href="./css/style.css" rel="stylesheet"/>
</head>

<body>


<!-- Topbar Start -->
<jsp:include page="header.jsp"></jsp:include>
<!-- Page Header Start -->
<% Account acc = (Account) request.getSession().getAttribute("a");
    Account acc1 = AccountService.getAccountById(String.valueOf(acc.getIdA()));
%>
<div class="container-fluid bg-secondary mb-5">
    <div
            class="d-flex flex-column align-items-center justify-content-center"
            style="min-height: 300px"
    >
        <h1 class="font-weight-semi-bold text-uppercase mb-3">
            Thông tin cá nhân
        </h1>
        <div class="d-inline-flex">
            <p class="m-0">Trang chủ</p>
            <p class="m-0 px-2">-</p>
            <p class="m-0">Tài khoản</p>
            <p class="m-0 px-2">-</p>
            <p class="m-0"><a href=""> Chỉnh sửa thông tin cá nhân</a></p>
        </div>
    </div>
</div>
<!-- Page Header End -->
<div class="container">
    <div class="main-body">
        <div class="row">
            <div class="col-lg-4">
                <div class="card">
                    <div class="card-body">
                        <div
                                class="d-flex flex-column align-items-center text-center"
                        >
                            <img
                                    src="<%= acc1.getImg() %>"
                                    alt="Admin"
                                    class="rounded-circle p-1 bg-primary"
                                    width="150px"
                            />
                            <div class="mt-3">
                                <h4><%=acc1.getUser()%>
                                </h4>
                                <p class="text-muted font-size-sm">
                                    <%= acc1.getAddress() %>
                                </p>
                                <button class="btn btn-primary">Theo dõi</button>
                                <button class="btn btn-outline-primary">
                                    Nhắn tin
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-lg-8">
                <div class="card">
                    <div class="card-body">
                        <form action="edit-profile" method="post">
                            <input name="idAccount" value="<%= acc.getIdA() %>" type="hidden">
                            <div class="row mb-3">
                                <div class="col-sm-3">
                                    <h6 class="mb-0">Họ và tên</h6>
                                </div>
                                <div class="col-sm-9 text-secondary">
                                    <input
                                            type="text"
                                            name="fullName"
                                            class="form-control"
                                            value="<%= acc1.getFullName() %>"
                                    />
                                </div>
                            </div>

                            <div class="row mb-3">
                                <div class="col-sm-3">
                                    <h6 class="mb-0">E-mail</h6>
                                </div>
                                <div class="col-sm-9 text-secondary">
                                    <input
                                            type="text"
                                            name="email"
                                            class="form-control"
                                            value="<%= acc1.getEmail() %>"
                                    />
                                </div>
                            </div>

                            <div class="row mb-3">
                                <div class="col-sm-3">
                                    <h6 class="mb-0">Số điện thoại</h6>
                                </div>
                                <div class="col-sm-9 text-secondary">
                                    <input
                                            type="text"
                                            name="phone"
                                            class="form-control"
                                            value="<%= acc1.getPhone() %>"
                                    />
                                </div>
                            </div>

                            <div class="row mb-3">
                                <div class="col-sm-3">
                                    <h6 class="mb-0">Mật khẩu</h6>
                                </div>
                                <div class="col-sm-9 text-secondary">
                                    <input
                                            type="password"
                                            name="pass"
                                            class="form-control"
                                            value="<%= acc1.getPass() %>"
                                    />
                                </div>
                            </div>

                            <div class="row mb-3">
                                <div class="col-sm-3">
                                    <h6 class="mb-0">Địa chỉ</h6>
                                </div>
                                <div class="col-sm-9 text-secondary">
                                    <input
                                            type="text"
                                            name="address"
                                            class="form-control"
                                            value="<%= acc1.getAddress() %>"
                                    />
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-sm-3"></div>
                                <div class="col-sm-9 text-secondary">
                                    <input
                                            type="submit"
                                            class="btn btn-primary px-4"
                                            value="Lưu"
                                    />
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="row"></div>
            </div>
        </div>
    </div>
</div>
<!-- Footer Start -->
<jsp:include page="footer.jsp"></jsp:include>
<!-- Footer End -->

<!-- Back to Top -->
<a href="#" class="btn btn-primary back-to-top"
><i class="fa fa-angle-double-up"></i
></a>

<!-- JavaScript Libraries -->
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
<script src="./lib/easing/easing.min.js"></script>
<script src="./lib/owlcarousel/owl.carousel.min.js"></script>

<!-- Contact Javascript File -->
<script src="./mail/jqBootstrapValidation.min.js"></script>
<script src="./mail/contact.js"></script>

<!-- Template Javascript -->
<script src="./js/main.js"></script>

</body>
</html>
