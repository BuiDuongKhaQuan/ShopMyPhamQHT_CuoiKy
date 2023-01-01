<%@ page import="qht.shopmypham.com.vn.model.Cart" %>
<%@ page import="qht.shopmypham.com.vn.model.Product" %>
<%@ page import="java.text.NumberFormat" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.TreeMap" %>
<%@ page import="java.util.List" %>
<%@ page import="qht.shopmypham.com.vn.model.Payment" %>
<%@ page import="qht.shopmypham.com.vn.model.ListProductByCart" %>
<%@ page import="qht.shopmypham.com.vn.service.ProductService" %>
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
</head>

<body>
<!DOCTYPE html>
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
</head>

<body>
<%

    NumberFormat nf = NumberFormat.getInstance();
    nf.setMinimumFractionDigits(0);
%>
<jsp:include page="header.jsp"></jsp:include>
<!-- Page Header Start -->
<div class="container-fluid bg-secondary mb-5">
    <div
            class="d-flex flex-column align-items-center justify-content-center"
            style="min-height: 300px"
    >
        <h1 class="font-weight-semi-bold text-uppercase mb-3">
            THỦ TỤC THANH TOÁN
        </h1>
        <div class="d-inline-flex">
            <p class="m-0"><a href="">Trang chủ</a></p>
            <p class="m-0 px-2">-</p>
            <p class="m-0">Thanh toán</p>
        </div>
    </div>
</div>
<!-- Page Header End -->

<!-- Checkout Start -->
<div class="container-fluid pt-5">
    <form
            method="post"
            action="checkout"
    >
        <div class="row px-xl-5">
            <div class="col-lg-8">
                <h4 class="font-weight-semi-bold mb-4" style="margin-left: 15px">Thông tin thanh toán</h4>

                <div class="col-lg-12 mb-5">
                    <div class="contact-form">
                        <div id="success"></div>

                        <div class="control-group">
                            <input
                                    type="text"
                                    class="form-control from-border"
                                    name="name"
                                    id="name"
                                    placeholder="Họ và tên"
                                    required="required"
                                    data-validation-required-message="Please enter your name"
                            />
                            <p class="help-block text-danger"></p>
                        </div>
                        <div class="control-group">
                            <input
                                    type="text"
                                    class="form-control from-border"
                                    id="email"
                                    name="phone"
                                    placeholder="Số điện thoại"
                                    required="required"
                                    data-validation-required-message="Please enter your email"
                            />
                            <p class="help-block text-danger"></p>
                        </div>
                        <div class="control-group">
                            <input
                                    type="text"
                                    class="form-control from-border"
                                    id="subject"
                                    name="address"
                                    placeholder="Địa chỉ"
                                    required="required"
                                    data-validation-required-message="Please enter a subject"
                            />
                            <p class="help-block text-danger"></p>
                        </div>
                        <div class="control-group">
                    <textarea
                            class="form-control from-border"
                            rows="6"
                            id="message"
                            name="note"
                            placeholder="Lưu ý của bạn về đơn hàng"
                            required="required"
                            data-validation-required-message="Please enter your message"
                    ></textarea>
                            <p class="help-block text-danger"></p>
                        </div>

                    </div>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="card border-secondary mb-5">
                    <div class="card-header bg-secondary border-0">
                        <h4 class="font-weight-semi-bold m-0">Tổng đơn đặt hàng</h4>
                    </div>
                    <div class="card-body">
                        <%--                        <h5 class="font-weight-medium mb-3">Các sản phẩm</h5>--%>
                        <%
                            List<ListProductByCart> list = (List<ListProductByCart>) request.getAttribute("list");
                            double totalPrice = 0;
                            for (ListProductByCart l : list) {
                                Product p = ProductService.getProductById(String.valueOf(l.getIdP()));
                                totalPrice += (p.getPrice() * l.getQuantity());
                        %>
                        <div class="d-flex justify-content-between"
                             style="border-bottom: 1px solid var(--border-color);margin-bottom: 10px;">
                            <p>
                                <%=p.getName()%>(SL:<%=l.getQuantity()%>)
                            </p>
                            <p><%=nf.format(p.getPrice())%>đ
                            </p>
                        </div>
                        <%}%>
                        <hr class="mt-0" style="border: none"/>
                        <div class="d-flex justify-content-between mb-3 pt-1">
                            <h6 class="font-weight-medium">Tổng giá</h6>
                            <h6 class="font-weight-medium"><%=nf.format(totalPrice)%>đ</h6>
                        </div>
                        <div class="d-flex justify-content-between">
                            <h6 class="font-weight-medium">Phí vận chuyển</h6>
                            <h6 class="font-weight-medium">25,000đ</h6>
                        </div>
                    </div>
                    <div class="card-footer border-secondary bg-transparent">
                        <div class="d-flex justify-content-between mt-2">
                            <h5 class="font-weight-bold">Tổng</h5>
                            <h5 class="font-weight-bold"><%=nf.format(totalPrice + 25000)%>đ</h5>
                        </div>
                    </div>
                </div>
                <div class="card border-secondary mb-5">
                    <div class="card-header bg-secondary border-0">
                        <h4 class="font-weight-semi-bold m-0">Hình thức thanh toán</h4>
                    </div>
                    <div class="card-body">
                        <% List<Payment> paymentList = (List<Payment>) request.getAttribute("paymentList");%>
                        <select name="payment" class="custom-select">
                            <% for (Payment payment : paymentList) {%>
                            <option value="<%=payment.getIdPm()%>"><%=payment.getNamePayment()%>
                            </option>
                            <%}%>
                        </select>
                    </div>
                    <div class="card-footer border-secondary bg-transparent">
                        <button type="submit"
                                class="btn btn-lg btn-block btn-primary font-weight-bold my-3 py-3"
                        >
                            Đặt hàng
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </form>
</div>
<!-- Checkout End -->
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
<script src="lib/easing/easing.min.js"></script>
<script src="lib/owlcarousel/owl.carousel.min.js"></script>

<!-- Contact Javascript File -->
<script src="mail/jqBootstrapValidation.min.js"></script>
<script src="mail/contact.js"></script>

<!-- Template Javascript -->
<script src="./js/main.js"></script>

</body>
</html>
</body>
</html>
