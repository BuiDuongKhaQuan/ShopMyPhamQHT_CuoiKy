<%@ page import="qht.shopmypham.com.vn.model.Product" %>
<%@ page import="java.util.List" %>
<%@ page import="qht.shopmypham.com.vn.model.Cart" %>
<%@ page import="java.text.NumberFormat" %>
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
<jsp:include page="header-with-slider.jsp"></jsp:include>
</div>
</div>
<!-- Page Header Start -->
<div class="container-fluid bg-secondary mb-5">
    <div
            class="d-flex flex-column align-items-center justify-content-center"
            style="min-height: 300px"
    >
        <h1 class="font-weight-semi-bold text-uppercase mb-3">Sản phẩm</h1>
        <div class="d-inline-flex">
            <p class="m-0"><a href="">Trang chủ</a></p>
            <p class="m-0 px-2">-</p>
            <p class="m-0">Sản phẩm</p>
        </div>
    </div>
</div>
<!-- Page Header End -->

<!-- Shop Start -->
<div class="container-fluid pt-5">
    <div class="row px-xl-5">
        <!-- Shop Sidebar Start -->
        <div class="col-lg-3 col-md-12">

            <!-- Price Start -->
            <form action="filter-product">
                <div class="border-bottom mb-4 pb-4">
                    <%
                        String checked0 = (String) request.getAttribute("checked0");
                        String checked1 = (String) request.getAttribute("checked1");
                        String checked2 = (String) request.getAttribute("checked2");
                        String checked3 = (String) request.getAttribute("checked3");
                        String checked4 = (String) request.getAttribute("checked4");
                        String checked5 = (String) request.getAttribute("checked5");
                        String checked6 = (String) request.getAttribute("checked6");

                    %>
                    <h5 class="font-weight-semi-bold mb-4">Giá</h5>

                    <div
                            class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3"
                    >
                        <input
                                type="checkbox"
                                name="price"
                                class="custom-control-input check"
                                <%=checked0%>
                                id="price-all"
                                value="1"
                        />
                        <label class="custom-control-label" for="price-all"
                        >Tất cả</label
                        >
                        <span class="badge border font-weight-normal">70</span>
                    </div>
                    <div
                            class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3"
                    >
                        <input
                                type="checkbox"
                                name="price"
                                <%=checked1%>
                                class="custom-control-input check"
                                value="0"
                                id="price-1"
                        />
                        <label class="custom-control-label" for="price-1"
                        >0 - 100,000đ</label
                        >
                        <span class="badge border font-weight-normal">150</span>
                    </div>
                    <div
                            class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3"
                    >
                        <input
                                type="checkbox"
                                name="price"
                                value="100000"
                                <%=checked2%>
                                class="custom-control-input check"
                                id="price-2"
                        />
                        <label class="custom-control-label" for="price-2"
                        >100,000đ - 200,000đ</label
                        >
                        <span class="badge border font-weight-normal">295</span>
                    </div>
                    <div
                            class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3"
                    >
                        <input
                                type="checkbox"
                                name="price"
                                value="200000"
                                <%=checked3%>
                                class="custom-control-input check"
                                id="price-3"
                        />
                        <label class="custom-control-label" for="price-3"
                        >200,000đ - 300,000đ</label
                        >
                        <span class="badge border font-weight-normal">246</span>
                    </div>
                    <div
                            class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3"
                    >
                        <input
                                type="checkbox"
                                name="price"
                                value="300000"
                                <%=checked4%>
                                class="custom-control-input check"
                                id="price-4"
                        />
                        <label class="custom-control-label" for="price-4"
                        >300,000đ - 400,000đ</label
                        >
                        <span class="badge border font-weight-normal">145</span>
                    </div>
                    <div
                            class="custom-control custom-checkbox d-flex align-items-center justify-content-between mb-3"
                    >
                        <input
                                type="checkbox"
                                name="price"
                                value="400000"
                                <%=checked5%>
                                class="custom-control-input check"
                                id="price-5"
                        />
                        <label class="custom-control-label" for="price-5"
                        >400,000đ - 500,000đ</label
                        >
                        <span class="badge border font-weight-normal">145</span>
                    </div>
                    <div
                            class="custom-control custom-checkbox d-flex align-items-center justify-content-between"
                    >
                        <input
                                type="checkbox"
                                name="price"
                                <%=checked6%>
                                value="500000"
                                class="custom-control-input check"
                                id="price-6"
                        />
                        <label class="custom-control-label" for="price-6"
                        >500,000đ trở lên</label
                        >
                        <span class="badge border font-weight-normal">168</span>
                    </div>


                </div>
                <!-- Price End -->
                <%--                filter--%>
                <div>
                    <button
                            class="btn btn-primary btn-block border-0 py-3 "
                            style="border-radius: 5px; font-size: 25px; padding: 5px !important;"
                            type="submit"
                    >
                        Lọc
                    </button>
                </div>
            </form>
            <!-- Size End -->
        </div>
        <!-- Shop Sidebar End -->

        <!-- Shop Product Start -->
        <div class="col-lg-9 col-md-12">
            <div class="row pb-3">
                <div class="col-12 pb-1">
                    <div class="d-flex align-items-center justify-content-between mb-4" style="margin-left: 35px;">
                        <form action="search" method="get" style="border: 1px solid var(--border-color); ">
                            <% String txtInput1 = (String) request.getAttribute("txtSearch1"); %>
                            <div class="input-group">
                                <%if (txtInput1 != null) {%>
                                <input
                                        type="text"
                                        name="nameP"
                                        class="form-control"
                                        placeholder="Nhập tên sản phẩm"
                                        value="<%=txtInput1%>"
                                />
                                <%} else {%>
                                <input
                                        type="text"
                                        name="nameP"
                                        class="form-control"
                                        placeholder="Nhập tên sản phẩm"
                                />
                                <%}%>
                                <div class="input-group-append">
                                    <button type="submit"
                                            class="input-group-text bg-transparent text-primary btn"
                                    >
                                        <i class="fa fa-search"></i>
                                    </button>
                                </div>
                            </div>
                        </form>
                        <div class="dropdown ml-4">
                            <button
                                    class="btn border dropdown-toggle"
                                    type="button"
                                    id="triggerId"
                                    data-toggle="dropdown"
                                    aria-haspopup="true"
                                    aria-expanded="false"
                            >
                                Sắp xếp
                            </button>
                            <div
                                    class="dropdown-menu dropdown-menu-right"
                                    aria-labelledby="triggerId"
                            >
                                <a class="dropdown-item" href="sort-product?command=isNew">Sản phẩm mới</a>
                                <a class="dropdown-item" href="sort-product?command=descending">Giá tăng dần</a>
                                <a class="dropdown-item" href="sort-product?command=ascending">Giá giảm dần</a>
                            </div>

                        </div>
                    </div>
                </div>
                <div class="row px-xl-5 pb-3" id="contentProduct">
                    <jsp:include page="product.jsp"></jsp:include>
                </div>
                <div class="col-12 pb-1" style="display: flex;justify-content: center">
                    <nav aria-label="Page navigation">
                        <button onclick="loadMore()" class="btn btn-primary border">Xem thêm
                        </button>
                    </nav>
                </div>
            </div>
        </div>
        <!-- Shop Product End -->
    </div>
</div>
<!-- Shop End -->

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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script>
    $(document).ready(function () {
        $('.check').click(function () {
            $('.check').not(this).prop('checked', false);
        });
    });
    $(document).ready(function () {
        $('.check1').click(function () {
            $('.check1').not(this).prop('checked', false);
        });
    });
</script>
<script>
    function loadMore() {
        var amount = document.getElementsByClassName("listproduct").length;
        $.ajax({
            url: "load-more-product",
            type: "get", //send it through get method
            data: {
                exits: amount
            },
            success: function (response) {
                var productList = document.getElementById("contentProduct");
                productList.innerHTML += response;

            },
            error: function (xhr) {
                //Do Something to handle error
            }
        });
    }
</script>
</body>
</html>
</body>
</html>
