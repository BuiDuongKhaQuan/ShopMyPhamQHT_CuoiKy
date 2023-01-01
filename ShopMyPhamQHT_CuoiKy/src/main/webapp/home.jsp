<%@ page import="java.util.List" %>
<%@ page import="qht.shopmypham.com.vn.service.ProductService" %>
<%@ page import="qht.shopmypham.com.vn.service.CategoryService" %>
<%@ page import="java.text.NumberFormat" %>
<%@ page import="qht.shopmypham.com.vn.model.*" %>
<%@ page import="qht.shopmypham.com.vn.service.ShopService" %>
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

<jsp:include page="header-with-slider.jsp"></jsp:include>

<!-- Featured Start -->
<div class="container-fluid pt-5">
    <div class="row px-xl-5 pb-3">
        <div class="col-lg-16 col-md-6 col-sm-12 pb-1">
            <div
                    class="d-flex align-items-center border mb-4 backround-color "
                    style="padding: 30px; "
            >
                <h1 class="fa fa-check text-primary m-0 mr-3"></h1>
                <h5 class="font-weight-semi-bold m-0">Sản phẩm chất lượng</h5>
            </div>
        </div>
        <div class="col-lg-16 col-md-6 col-sm-12 pb-1">
            <div
                    class="d-flex align-items-center border mb-4 backround-color "
                    style="padding: 30px; "
            >
                <h1 class="fa fa-shipping-fast text-primary m-0 mr-2"></h1>
                <h5 class="font-weight-semi-bold m-0">Miễn phí vận chuyển</h5>
            </div>
        </div>
        <div class="col-lg-16 col-md-6 col-sm-12 pb-1">
            <div
                    class="d-flex align-items-center border mb-4 backround-color "
                    style="padding: 30px; "
            >
                <h1 class="fas fa-exchange-alt text-primary m-0 mr-3"></h1>
                <h5 class="font-weight-semi-bold m-0">Trả hàng trong 7 ngày</h5>
            </div>
        </div>
        <div class="col-lg-16 col-md-6 col-sm-12 pb-1">
            <div
                    class="d-flex align-items-center border mb-4 backround-color "
                    style="padding: 30px;"
            >
                <h1 class="fa fa-phone-volume text-primary m-0 mr-3"></h1>
                <h5 class="font-weight-semi-bold m-0">Hỗ trợ 24/7</h5>
            </div>
        </div>
    </div>
</div>
<!-- Featured End -->

<!-- Categories Start -->
<div class="container-fluid pt-5">
    <div class="row px-xl-5 pb-3">
        <% List<Categories> top6Categories = (List<Categories>) request.getAttribute("top6Categories");
            for (Categories c : top6Categories) {
        %>
        <div class="col-lg-4 col-md-6 pb-1">
            <div
                    class="cat-item d-flex flex-column border mb-4 backround-color "
                    style="padding: 30px"
            >
                <p class="text-right"><%=ProductService.getProductByIdC(String.valueOf(c.getIdC())).size()%> sản
                    phẩm</p>
                <a
                        href="categorie?cid=<%=c.getIdC()%>"
                        class="cat-img position-relative overflow-hidden mb-3"
                >
                    <img
                            class="img-fluid img-height"
                            src="<%= c.getImgC()%>"
                            alt=""
                            style="width: 400px; height: 400px"
                    />
                </a>
                <h5 class="font-weight-semi-bold m-0 text-truncate"><%= c.getNameC()%>
                </h5>
            </div>
        </div>
        <% } %>
    </div>
</div>
<!-- Categories End -->
<!-- Offer Start -->
<div class="container-fluid offer pt-5">
    <div class="row px-xl-5">
        <% List<Offer> listOffer = (List<Offer>) request.getAttribute("listOffer");
            Categories c = CategoryService.getCategoriesById(String.valueOf(listOffer.get(0).getIdC1()));
            Categories c1 = CategoryService.getCategoriesById(String.valueOf(listOffer.get(1).getIdC1()));
        %>
        <div class="col-md-6 pb-4">
            <div
                    class="position-relative bg-secondary text-center text-md-right text-white mb-2 py-5 px-5"
            >
                <img src="<%=c.getImgC()%>"
                     alt=""/>
                <div class="position-relative" style="z-index: 1">
                    <h5 class="text-uppercase text-primary mb-3">
                        <%=listOffer.get(0).getSaleOff()%>
                    </h5>
                    <h1 class="mb-4 font-weight-semi-bold"><%=c.getNameC()%>
                    </h1>
                    <a href="categorie?cid=<%=c.getIdC()%>" class="btn btn-outline-primary py-md-2 px-md-3"
                    >Mua ngay</a
                    >
                </div>
            </div>
        </div>

        <div class="col-md-6 pb-4">
            <div
                    class="position-relative bg-secondary text-center text-md-left text-white mb-2 py-5 px-5"
            >
                <img src="<%=c1.getImgC()%>" alt=""/>
                <div class="position-relative" style="z-index: 1">
                    <h5 class="text-uppercase text-primary mb-3">
                        <%=listOffer.get(1).getSaleOff()%>
                    </h5>
                    <h1 class="mb-4 font-weight-semi-bold"><%=c1.getNameC()%>
                    </h1>
                    <a href="categorie?cid=<%=c1.getIdC()%>" class="btn btn-outline-primary py-md-2 px-md-3"
                    >Mua ngay</a
                    >
                </div>
            </div>
        </div>


    </div>
</div>
<!-- Offer End -->
<!-- Products Start -->
<div class="container-fluid pt-5">
    <%
        NumberFormat nf = NumberFormat.getInstance();
        nf.setMinimumFractionDigits(0);
        List<Product> list10Product1 = (List<Product>) request.getAttribute("list10Product1");
    %>
    <div class="text-center mb-4">
        <h2 class="section-title px-5">
            <span class="px-2"><%=CategoryService.getCategoriesById(String.valueOf(list10Product1.get(0).getIdC())).getNameC()%></span>
        </h2>
    </div>
    <div class="row px-xl-5 pb-3">
        <%
            for (Product p : list10Product1) {
        %>
        <div class="col-lg-15 col-md-13 col-sm-13 pb-1">
            <div class="card product-item  mb-4 border-product border-img">
                <%if (p.getIsNew() == 1) {%>
                <div class="is-new">
                    <h5 class="new-item">New</h5>
                </div>
                <%}%>
                <div
                        class="card-header product-img position-relative overflow-hidden bg-transparent p-0 border-img"
                >
                    <a href="detail?pid=<%= p.getIdP()%>">
                        <img
                                class="img-fluid w-100"
                                src="<%=p.getImg1()%>"
                                alt=""
                                style="height: 300px; "
                        />
                    </a>

                </div>
                <div
                        class="card-body text-center p-0 pt-4 pb-3 border-product"
                        style=" background:#ffaee0;"
                >
                    <a href="detail?pid=<%= p.getIdP()%>" style="text-decoration: none">
                        <h6 class="text-truncate mb-3">
                            <%= p.getName()%>
                        </h6>
                    </a>
                    <div class="d-flex justify-content-center">
                        <h6><%=nf.format(p.getPrice())%>đ
                        </h6>
                        <h6 class="text-muted ml-2">
                            <del>123,000đ</del>
                        </h6>
                    </div>
                </div>
            </div>
        </div>
        <%}%>
    </div>
</div>
<!-- Products End -->
<!-- Subscribe Start -->
<div class="container-fluid bg-secondary my-5">
    <div class="row justify-content-md-center py-5 px-xl-5">
        <div class="col-md-6 col-12 py-5">
            <div class="text-center mb-2 pb-2">
                <h2 class="section-title px-5 mb-3">
                    <span class="bg-secondary px-2">Cập nhật thông tin</span>
                </h2>
                <p>
                    <%=ShopService.getAllBranchShop().get(0).getTextSubrise()%>
                </p>
            </div>
            <form action="subscibe">
                <div class="input-group">
                    <input
                            type="email"
                            name="email"
                            class="form-control border-white p-4"
                            placeholder="Để lại email tại đây"
                    />
                    <div class="input-group-append">
                        <button class="btn btn-primary px-4" type="submit">OK</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
<!-- Subscribe End -->

<!-- Products Start -->
<div class="container-fluid pt-5">
    <% List<Product> list10Product2 = (List<Product>) request.getAttribute("list10Product2");%>
    <div class="text-center mb-4">
        <h2 class="section-title px-5">
            <span class="px-2"><%=CategoryService.getCategoriesById(String.valueOf(list10Product2.get(0).getIdC())).getNameC()%></span>
        </h2>
    </div>
    <div class="row px-xl-5 pb-3">
        <%
            for (Product p : list10Product2) {
        %>
        <div class="col-lg-15 col-md-13 col-sm-13 pb-1">
            <div class="card product-item  mb-4 border-product border-img">
                <%if (p.getIsNew() == 1) {%>
                <div class="is-new">
                    <h5 class="new-item">New</h5>
                </div>
                <%}%>
                <div
                        class="card-header product-img position-relative overflow-hidden bg-transparent p-0 border-img"
                >
                    <a href="detail?pid=<%= p.getIdP()%>">
                        <img
                                class="img-fluid w-100"
                                src="<%=p.getImg1()%>"
                                alt=""
                                style="height: 300px; "
                        />
                    </a>

                </div>
                <div
                        class="card-body text-center p-0 pt-4 pb-3 border-product"
                        style=" background:#ffaee0;"
                >
                    <a href="detail?pid=<%= p.getIdP()%>" style="text-decoration: none">
                        <h6 class="text-truncate mb-3">
                            <%= p.getName()%>
                        </h6>
                    </a>
                    <div class="d-flex justify-content-center">
                        <h6><%=nf.format(p.getPrice())%>đ
                        </h6>
                        <h6 class="text-muted ml-2">
                            <del>123,000đ</del>
                        </h6>
                    </div>
                </div>
            </div>
        </div>
        <%}%>
    </div>
</div>
<!-- Products End -->

<!-- Vendor Start -->
<div class="container-fluid py-5">
    <div class="row px-xl-5">
        <div class="col">
            <div class="owl-carousel vendor-carousel">
                <%
                    List<Trademark> listTrademark = (List<Trademark>) request.getAttribute("listTrademark");
                    for (Trademark trademark : listTrademark) {
                %>
                <div class="vendor-item border p-4">
                    <img
                            src="<%=trademark.getLogo()%>"
                            alt=""
                    />
                </div>
                <%}%>

            </div>
        </div>
    </div>
</div>
<!-- Vendor End -->

<jsp:include page="footer.jsp"></jsp:include>

<!-- Back to Top -->
<a href="#" class="btn btn-primary back-to-top"
><i class="fa fa-angle-double-up"></i
></a>

<!-- JavaScript Libraries -->
<%--<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>--%>
<script
        src="https://code.jquery.com/jquery-3.6.3.js"
        integrity="sha256-nQLuAZGRRcILA+6dMBOvcRh5Pe310sBpanc6+QBmyVM="
        crossorigin="anonymous"></script>
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
</body>
</html>
