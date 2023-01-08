<%@ page import="java.util.List" %>
<%@ page import="java.util.Collections" %>
<%@ page import="qht.shopmypham.com.vn.model.*" %>
<%@ page import="qht.shopmypham.com.vn.service.*" %>
<%@ page import="java.text.NumberFormat" %>
<%@ page import="java.util.ArrayList" %>
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
    <link href="./css/style.css" rel="stylesheet"/>
    <link rel="stylesheet" href="./css/profile.css"/>
</head>

<body>

<jsp:include page="header.jsp"></jsp:include>

<% HttpSession session1 = request.getSession();
    Account acc = (Account) session1.getAttribute("a");
    Account acc1 = AccountService.getAccountById(String.valueOf(acc.getIdA()));
%>

<!-- Page Header Start -->
<div class="container-fluid bg-secondary mb-5">
    <div
            class="d-flex flex-column align-items-center justify-content-center"
            style="min-height: 300px"
    >
        <h1 class="font-weight-semi-bold text-uppercase mb-3">
            Chi tiết đơn hàng
        </h1>
        <div class="d-inline-flex">
            <p class="m-0"><a href="home">Trang chủ</a></p>
            <p class="m-0 px-2">-</p>
            <p class="m-0">Chi tiết đơn hàng</p>
        </div>
    </div>
</div>
<!-- Page Header End -->

<div class="container">
    <div class="main-body">
        <div class="col">
            <div class="tab-content">
                <div class="row" style="justify-content: center;">
                    <section class="h-100 gradient-custom">
                        <div class="container py-5 h-100">
                            <div class="row d-flex justify-content-center align-items-center h-100">
                                <div class="col-lg-10 col-xl-80">
                                    <div class="card" style="border-radius: 10px;">
                                        <% int total1 = 0;
                                            NumberFormat nf = NumberFormat.getInstance();
                                            nf.setMinimumFractionDigits(0);
                                            CheckOut checkOut = (CheckOut) request.getAttribute("checkOut");
                                            List<ListProductByCheckOut> productByCheckOutList = (List<ListProductByCheckOut>) request.getAttribute("listProductByCheckOuts");
                                        %>
                                        <div class="card-body p-4">
                                            <div class="d-flex justify-content-between align-items-center mb-4">
                                                <p class="lead fw-normal mb-0" style="color: #a8729a;">Sản phẩm</p>
                                                <p class="small text-muted mb-0">Mã đơn :
                                                    #<%=checkOut.getIdCk()%>
                                                </p>
                                            </div>
                                            <%
                                                for (ListProductByCheckOut productByCheckOut : productByCheckOutList) {
                                                    Product product = ProductService.getProductById(String.valueOf(productByCheckOut.getIdP()));
                                                    total1 += product.getPrice() * productByCheckOut.getQuantity();
                                            %>
                                            <div class="card shadow-0 border mb-4">
                                                <div class="card-body">
                                                    <div class="row">
                                                        <div class="col-md-2">
                                                            <img src="<%=product.getImg1()%>"
                                                                 class="img-fluid" alt="Phone">
                                                        </div>
                                                        <div class="col-md-2 text-center d-flex justify-content-center align-items-center">
                                                            <p class="text-muted mb-0"><%=product.getName()%>
                                                            </p>
                                                        </div>
                                                        <div class="col-md-2 text-center d-flex justify-content-center align-items-center">
                                                            <p class="text-muted mb-0 small"></p>
                                                        </div>
                                                        <div class="col-md-2 text-center d-flex justify-content-center align-items-center">
                                                            <p class="text-muted mb-0 small"></p>
                                                        </div>

                                                        <div class="col-md-2 text-center d-flex justify-content-center align-items-center">
                                                            <p class="text-muted mb-0 small"><%=productByCheckOut.getQuantity()%>
                                                            </p>
                                                        </div>
                                                        <div class="col-md-2 text-center d-flex justify-content-center align-items-center">
                                                            <p class="text-muted mb-0 small"><%=nf.format(product.getPrice() * productByCheckOut.getQuantity())%>
                                                                đ</p>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <%}%>
                                            <div class="d-flex justify-content-between pt-2">
                                                <p class="fw-bold mb-0">Tổng giá trị sản phẩm</p>
                                                <p class="text-muted mb-0"><span class="fw-bold me-4"></span>
                                                    <%=nf.format(total1)%>đ</p>
                                            </div>

                                            <div class="d-flex justify-content-between pt-2">
                                                <p class="fw-bold mb-0">Phí vận chuyển</p>
                                                <p class="text-muted mb-0"><span
                                                        class="fw-bold me-4"></span>25,000đ</p>
                                            </div>
                                            <div class="d-flex justify-content-between pt-2">
                                                <p class="fw-bold mb-0">Trạng thái</p>
                                                <p class="text-muted mb-0"><span
                                                        class="fw-bold me-4"></span>
                                                    <% String status = "";
                                                        if (checkOut.getIdStatus() == 0) {
                                                            status = "Chờ xác nhận";
                                                        }
                                                        if (checkOut.getIdStatus() == 1) {
                                                            status = "Đang vận chuyển";
                                                        }
                                                        if (checkOut.getIdStatus() == 2) {
                                                            status = "Hoàn thành";
                                                        }
                                                        if (checkOut.getIdStatus() == 3) {
                                                            status = "Đã hoàn thành";
                                                        }
                                                        if (checkOut.getIdStatus() == 4) {
                                                            status = "Chờ xác nhận hủy";
                                                        }
                                                        if (checkOut.getIdStatus() == 5) {
                                                            status = "Đã hủy";
                                                        }%>
                                                    <%=status%>
                                                </p>
                                            </div>
                                            <div class="d-flex justify-content-between pt-2">
                                                <p class="fw-bold mb-0">Ngày đặt hàng</p>
                                                <p class="text-muted mb-0"><span
                                                        class="fw-bold me-4"></span><%=checkOut.getOrderDate()%>
                                                </p>
                                            </div>
                                            <div class="d-flex justify-content-between pt-2">
                                                <p class="fw-bold mb-0">Ngày xác nhận</p>
                                                <p class="text-muted mb-0"><span
                                                        class="fw-bold me-4"></span>
                                                    <%if (checkOut.getConfirmDate() != null) {%>
                                                    <%=checkOut.getOrderDate()%>
                                                    <%} else {%>
                                                    Chưa có thông tin
                                                    <%}%>
                                                </p>
                                            </div>
                                            <div class="d-flex justify-content-between pt-2">
                                                <p class="fw-bold mb-0">Ngày hoàn thành</p>
                                                <p class="text-muted mb-0"><span
                                                        class="fw-bold me-4"></span>
                                                    <%if (checkOut.getReceivedDate() != null) {%>
                                                    <%=checkOut.getReceivedDate()%>
                                                    <%} else {%>
                                                    Chưa có thông tin
                                                    <%}%>
                                                </p>
                                            </div>
                                        </div>
                                        <div class="card-footer border-0 px-4 py-5"
                                             style="background-color: #a8729a; border-bottom-left-radius: 10px; border-bottom-right-radius: 10px;">
                                            <h5 class="d-flex align-items-center justify-content-end text-white text-uppercase mb-0">
                                                Tổng giá trị đơn hàng: <span
                                                    class="h2 mb-0 ms-2"> <%=nf.format(total1 + 25000)%>đ</span></h5>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </section>
                </div>
            </div>
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
