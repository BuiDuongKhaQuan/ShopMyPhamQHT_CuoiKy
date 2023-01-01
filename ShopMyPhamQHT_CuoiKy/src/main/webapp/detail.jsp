<%@ page import="java.util.List" %>
<%@ page import="java.text.NumberFormat" %>
<%@ page import="qht.shopmypham.com.vn.service.ProductService" %>
<%@ page import="qht.shopmypham.com.vn.model.*" %>
<%@ page import="qht.shopmypham.com.vn.service.ReviewService" %>
<%@ page import="qht.shopmypham.com.vn.service.AccountService" %>
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html lang="en">
<head>
    <meta charset="utf-8"/>
    <title>QHT - Cửa hàng mỹ phẩm QHT</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport"/>
    <meta content="Free HTML Templates" name="keywords"/>

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
    <link href="./css/rating.css" rel="stylesheet"/>

</head>

<body>
<jsp:include page="header-with-slider.jsp"></jsp:include>

<!-- Page Header Start -->
<div class="container-fluid bg-secondary mb-5">
    <div
            class="d-flex flex-column align-items-center justify-content-center"
            style="min-height: 300px"
    >
        <h1 class="font-weight-semi-bold text-uppercase mb-3">
            chỉ tiết sản phẩm
        </h1>
        <div class="d-inline-flex">
            <p class="m-0"><a href="home">Trang chủ</a></p>
            <p class="m-0 px-2">-</p>
            <p class="m-0">Chi tiết sản phẩm</p>
        </div>
    </div>
</div>
<!-- Page Header End -->

<!-- Shop Detail Start -->
<div class="container-fluid py-5">

    <div class="row px-xl-5">
        <% Product p = (Product) request.getAttribute("product");
            NumberFormat nf = NumberFormat.getInstance();
            nf.setMinimumFractionDigits(0);
        %>
        <div class="col-lg-5 pb-5" style="margin-left: 100px;">
            <div
                    id="product-carousel"
                    class="carousel slide"
                    data-ride="carousel"
            >
                <div class="carousel-inner border" style="height: 510px;
                                                            margin-left: 13px; width: 95%;">

                    <div class="carousel-item active">
                        <img
                                class="w-100 h-100"
                                src="<%= p.getImg1()%>"
                                alt="Image"
                        />
                    </div>
                    <div class="carousel-item ">
                        <img
                                class="w-100 h-100"
                                src="<%= p.getImg2()%>"
                                alt="Image"
                        />
                    </div>
                    <div class="carousel-item ">
                        <img
                                class="w-100 h-100"
                                src="<%= p.getImg3()%>"
                                alt="Image"
                        />
                    </div>
                    <div class="carousel-item ">
                        <img
                                class="w-100 h-100"
                                src="<%= p.getImg4()%>"
                                alt="Image"
                        />
                    </div>

                </div>
                <a
                        class="carousel-control-prev"
                        href="#product-carousel"
                        data-slide="prev"
                >
                    <i class="fa fa-2x fa-angle-left text-dark"></i>
                </a>
                <a
                        class="carousel-control-next"
                        href="#product-carousel"
                        data-slide="next"
                >
                    <i class="fa fa-2x fa-angle-right text-dark"></i>
                </a>
            </div>
        </div>

        <div class="col-lg-7 pb-5">
            <h3 class="font-weight-semi-bold">
                <%= p.getName()%>
            </h3>
            <div class="d-flex mb-3">
                <div class="text-primary mr-2">
                    <small class="fas fa-star"></small>
                    <small class="fas fa-star"></small>
                    <small class="fas fa-star"></small>
                    <small class="fas fa-star-half-alt"></small>
                    <small class="far fa-star"></small>
                </div>
                <small class="pt-1">(50 Đánh giá)</small>
            </div>
            <h3 class="font-weight-semi-bold mb-4"><%= nf.format(p.getPrice())%>đ</h3>
            <p class="mb-4"></p>
            <div class="d-flex pt-2" style="margin-bottom: 20px">
                <p class="text-dark font-weight-medium mb-0 mr-2">Xuất xứ: <%=p.getTrademark()%></p>
            </div>

            <div class="d-flex align-items-center mb-4 pt-2">
                <div class="input-group quantity mr-3" style="width: 130px">
                    <div class="input-group-btn">
                        <button class="btn btn-primary btn-minus">
                            <i class="fa fa-minus"></i>
                        </button>
                    </div>
                    <input
                            type="text"
                            class="form-control bg-secondary text-center"
                            value="1"
                    />
                    <div class="input-group-btn">
                        <button class="btn btn-primary btn-plus">
                            <i class="fa fa-plus"></i>
                        </button>
                    </div>
                </div>

                <div class="input-group-btn">
                    <a href="cartcontroller?command=insertItem&product_id=<%=p.getIdP()%>&cartId=<%=System.currentTimeMillis()%>"
                       class="btn btn-sm text-dark p-0 btn-primary"
                       style=" border-radius: 0px;
                        padding: 8px !important;">
                        <i class="fa fa-plus"></i> <i
                            class="fas fa-shopping-cart text-primary mr-1"
                            style=" color: black !important;
                                        font-size: 18px;"></i>
                    </a>
                </div>

            </div>
            <div class="d-flex pt-2">
                <p class="text-dark font-weight-medium mb-0 mr-2">Chia sẻ:</p>
                <div class="d-inline-flex">
                    <a class="text-dark px-2" href="">
                        <i class="fab fa-facebook-f"></i>
                    </a>
                    <a class="text-dark px-2" href="">
                        <i class="fab fa-twitter"></i>
                    </a>
                    <a class="text-dark px-2" href="">
                        <i class="fab fa-linkedin-in"></i>
                    </a>
                    <a class="text-dark px-2" href="">
                        <i class="fab fa-pinterest"></i>
                    </a>
                </div>
            </div>
        </div>
    </div>
    <div class="row px-xl-5">
        <%
            List<Review> reviewList = (List<Review>) request.getAttribute("reviewList");
        %>
        <div class="col">
            <div
                    class="nav nav-tabs justify-content-center border-secondary mb-4"
            >
                <a
                        class="nav-item nav-link active"
                        data-toggle="tab"
                        href="#tab-pane-1"
                >Chi tiết</a
                >
                <a
                        class="nav-item nav-link"
                        data-toggle="tab"
                        href="#tab-pane-3"
                >Đánh giá (<%=reviewList.size()%>)</a
                >
            </div>
            <div class="tab-content">
                <div class="tab-pane fade show active" id="tab-pane-1">
                    <h4 class="mb-3">Mô tả sản phẩm</h4>
                    <p>
                        <%= p.getInformation()%>
                    </p>
                    <p>
                        <!--  -->
                    </p>
                </div>

                <div class="tab-pane fade" id="tab-pane-3">
                    <div class="row">

                        <div class="col-md-6">
                            <h4 class="mb-4">
                                <%=reviewList.size()%> đánh giá về
                                "<%=ProductService.getProductById(String.valueOf(p.getIdP())).getName()%>"
                            </h4>
                            <% for (Review review : reviewList) {
                            %>
                            <div class="media mb-4">

                                <div class="media-body">
                                    <h6>
                                        <%=AccountService.getAccountById(String.valueOf(review.getIdA())).getFullName()%>
                                        <%--                                        <small> - <i>01 Jan 2045</i></small>--%>
                                    </h6>
                                    <div class="text-primary mb-2">
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star-half-alt"></i>
                                        <i class="far fa-star"></i>
                                    </div>
                                    <p><%=review.getInfomation()%>
                                    </p>
                                </div>
                            </div>
                            <%}%>
                        </div>

                        <div class="col-md-6">
                            <h4 class="mb-4">Hãy để lại đánh giá của bạn!</h4>
                            <div class="d-flex my-3">
                                <p class="mb-0 mr-2">Đánh giá sao * :</p>
                                <div id="rating" class="text-primary" style="margin-top: -10px">
                                    <input type="radio" id="star5" name="rating" value="5"/>
                                    <label class="full" for="star5" title="Rất tốt - 5 stars"></label>

                                    <input type="radio" id="star4half" name="rating" value="4.5"/>
                                    <label class="half" for="star4half" title="4.5 sao"></label>

                                    <input type="radio" id="star4" name="rating" value="4"/>
                                    <label class="full" for="star4" title="Tốt - 4 sao"></label>

                                    <input type="radio" id="star3half" name="rating" value="3.5"/>
                                    <label class="half" for="star3half" title="3.5 stars"></label>

                                    <input type="radio" id="star3" name="rating" value="3"/>
                                    <label class="full" for="star3" title="Bình thường - 3 sao"></label>

                                    <input type="radio" id="star2half" name="rating" value="2.5"/>
                                    <label class="half" for="star2half" title="2.5 sao"></label>

                                    <input type="radio" id="star2" name="rating" value="2"/>
                                    <label class="full" for="star2" title="Trung bình  - 2 sao"></label>

                                    <input type="radio" id="star1half" name="rating" value="1"/>
                                    <label class="half" for="star1half" title="1.5 sao"></label>

                                    <input type="radio" id="star1" name="rating" value="1"/>
                                    <label class="full" for="star1" title="Tệ - 1 sao"></label>

                                    <input type="radio" id="starhalf" name="rating" value="0.5"/>
                                    <label class="half" for="starhalf" title="Rất tệ - 0.5 sao"></label>
                                </div>
                            </div>
                            <form action="review">
                                <div class="form-group">
                                    <label for="message">Đánh giá của bạn *</label>
                                    <textarea
                                            id="message"
                                            name="information"
                                            cols="30"
                                            style="
                              border: 1px solid var(--border-color);
                              border-radius: 5px;
                            "
                                            rows="5"
                                            class="form-control"
                                    ></textarea>
                                    <%
                                        Account acc = (Account) request.getSession().getAttribute("a"); %>
                                    <input type="hidden" name="idP" value="<%=p.getIdP()%>">
                                </div>
                                <%if (acc != null) {%>

                                <div class="form-group mb-0">
                                    <input
                                            type="submit"
                                            value="Để lại đánh giá của bạn"
                                            class="btn btn-primary px-3"
                                            style="border-radius: 5px"
                                    />
                                </div>
                                <%} else {%>
                                <div class="form-group mb-0">
                                    <a href="login.jsp"
                                       class="btn btn-primary px-3"
                                       style="border-radius: 5px"> Đăng nhập để đánh giá
                                    </a>
                                </div>
                                <%}%>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Shop Detail End -->

<!-- Products Start -->
<div class="container-fluid py-5">
    <div class="text-center mb-4">
        <h2 class="section-title px-5">
            <span class="px-2">Có thể bạn sẻ thích</span>
        </h2>
    </div>
    <div class="row px-xl-5">
        <div class="col">
            <div class="owl-carousel related-carousel">
                <%
                    List<Product> listProduct = (List<Product>) request.getAttribute("listProduct");
                    for (Product p1 : listProduct) {
                %>
                <div class="card product-item  mb-4 border-product">
                    <div
                            class="card-header product-img position-relative overflow-hidden bg-transparent p-0"
                    >
                        <a href="detail?pid=<%= p1.getIdP()%>">
                            <img
                                    class="img-fluid w-100 border-product"
                                    src="<%=p1.getImg1()%>"
                                    alt=""
                                    style="height: 300px; "
                            />
                        </a>

                    </div>
                    <div
                            class="card-body text-center p-0 pt-4 pb-3 border-product"
                            style=" background:#ffaee0;"
                    >
                        <a href="detail?pid=<%= p1.getIdP()%>" style="text-decoration: none">
                            <h6 class="text-truncate mb-3">
                                <%= p1.getName()%>
                            </h6>
                        </a>
                        <div class="d-flex justify-content-center">
                            <h6><%=nf.format(p1.getPrice())%>đ
                            </h6>
                            <h6 class="text-muted ml-2">
                                <del>123,000đ</del>
                            </h6>
                        </div>
                    </div>
                </div>
                <%}%>
            </div>
        </div>
    </div>
</div>
<!-- Products End -->

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
<script>
    function calcRate(r) {
        const f = ~~r,//Tương tự Math.floor(r)
            id = 'star' + f + (r % f ? 'half' : '')
        id && (document.getElementById(id).checked = !0)
    }</script>
</body>
</html>
