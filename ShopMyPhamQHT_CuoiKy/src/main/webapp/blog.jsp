<%@ page import="java.util.List" %>
<%@ page import="qht.shopmypham.com.vn.model.Blog" %>
<%@ page import="qht.shopmypham.com.vn.model.Account" %>
<%@ page import="qht.shopmypham.com.vn.service.AccountService" %>
<%@ page import="qht.shopmypham.com.vn.model.BlogOffer" %>
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
    <link rel="stylesheet" href="./css/blog.css"/>
    <link href="./css/style.css" rel="stylesheet"/>

    <!-- <link rel="stylesheet" href="./css/font-awesome.min.css" /> -->
</head>

<body>

<jsp:include page="header-with-slider.jsp"></jsp:include>

<!-- Content start -->
<section class="section">
    <div class="container">
        <div class="row">
            <div class="col-lg-9 col-md-12 col-sm-12 col-xs-12">
                <div class="page-wrapper">
                    <div class="blog-top clearfix">
                        <h4 class="pull-left">
                            Tin tức <a href="#"><i class="fa fa-rss"></i></a>
                        </h4>
                    </div>
                    <!-- end blog-top -->

                    <div class="blog-list clearfix">
                        <%
                            List<Blog> blogList = (List<Blog>) request.getAttribute("blogList");
                            for (Blog b : blogList) {
                                Account acc = AccountService.getAccountById(String.valueOf(b.getIdA()));
                        %>
                        <div class="blog-box row">
                            <div class="col-md-4">
                                <div class="post-media">
                                    <a
                                            href="<%=b.getLinkBlog()%>"
                                            class="text-back pink-hover"
                                            title=""
                                    >
                                        <img
                                                src="<%=b.getImg()%>"
                                                alt=""
                                                class="img-fluid"
                                        />
                                        <div class="hovereffect"></div>
                                    </a>
                                </div>
                                <!-- end media -->
                            </div>
                            <!-- end col -->

                            <div class="blog-meta big-meta col-md-8">
                                <h4>
                                    <a
                                            href="<%=b.getLinkBlog()%>"
                                            class="text-back pink-hover"
                                            class="text-back pink-hover"
                                            title=""
                                    ><%=b.getTopic()%>
                                    </a
                                    >
                                </h4>
                                <p>
                                    <%=b.getShortContent()%>
                                </p>
                                <small class="firstsmall"
                                ><a
                                        class="text-back pink-hover"
                                        href=""
                                        class="text-back pink-hover"
                                        title=""
                                >Đăng ngày:
                                </a
                                ></small
                                >
                                <small
                                ><a
                                        href=""
                                        class="text-back pink-hover"
                                        title=""
                                ><%=b.getTime()%>
                                </a
                                ></small
                                >
                                <small
                                ><a
                                        href=""
                                        class="text-back pink-hover"
                                        title=""
                                ><%=acc.getFullName()%>
                                </a
                                ></small
                                >
                                <small
                                ><a
                                        href=""
                                        class="text-back pink-hover"
                                        title=""
                                ><i class="fa fa-eye"></i><%=b.getView()%>
                                </a
                                ></small
                                >
                            </div>
                            <!-- end meta -->
                        </div>
                        <!-- end blog-box -->

                        <hr class="invis"/>
                        <%}%>
                    </div>
                    <!-- end blog-list -->
                </div>
                <!-- end page-wrapper -->
                <div class="row">
                    <div class="col-md-12">
                        <nav aria-label="Page navigation">
                            <ul class="pagination justify-content-start">
                                <li class="page-item">
                                    <button class="page-link" >Xem thêm</button>
                                </li>
<%--                                <li class="page-item">--%>
<%--                                    <a class="page-link" href="#">1</a>--%>
<%--                                </li>--%>
<%--                                <li class="page-item">--%>
<%--                                    <a class="page-link" href="#">2</a>--%>
<%--                                </li>--%>
<%--                                <li class="page-item">--%>
<%--                                    <a class="page-link" href="#">3</a>--%>
<%--                                </li>--%>
<%--                                <li class="page-item">--%>
<%--                                    <a class="page-link" href="#">Next</a>--%>
<%--                                </li>--%>
                            </ul>
                        </nav>
                    </div>
                    <!-- end col -->
                </div>
                <!-- end row -->
            </div>
            <!-- end col -->

            <div class="col-lg-3 col-md-12 col-sm-12 col-xs-12">
                <div class="sidebar">
                    <div class="widget">
                        <div class="banner-spot clearfix">
                            <div class="banner-img">
                                <img
                                        src="https://giupbanlamdep.com/wp-content/uploads/2018/07/oanh-pham-avarta.jpg"
                                        alt=""
                                        class="img-fluid"
                                />
                            </div>
                            <!-- end banner-img -->
                        </div>
                        <!-- end banner -->
                    </div>
                    <!-- end widget -->

                    <div class="widget">
                        <h2 class="widget-title">Xu hướng</h2>
                        <div class="trend-videos">
                            <% List<BlogOffer> blogOfferList = (List<BlogOffer>) request.getAttribute("blogOfferList");
                                for (BlogOffer bo : blogOfferList) {%>
                            <div class="blog-box">
                                <div class="post-media">
                                    <a
                                            href="<%=bo.getLink()%>"
                                            class="text-back pink-hover"
                                            title=""
                                    >
                                        <img
                                                src="<%=bo.getImg()%>"
                                                alt=""
                                                class="img-fluid"
                                        />
                                        <div class="hovereffect">
                                            <span class="videohover"></span>
                                        </div>
                                        <!-- end hover -->
                                    </a>
                                </div>
                                <!-- end media -->
                                <div class="blog-meta">
                                    <h4>
                                        <a
                                                href="<%=bo.getLink()%>"
                                                class="text-back pink-hover"
                                                title=""
                                        ><%=bo.getTopic()%>
                                        </a
                                        >
                                    </h4>
                                </div>
                                <!-- end meta -->
                            </div>
                            <!-- end blog-box -->

                            <hr class="invis"/>
                            <%}%>
                            <!-- end blog-box -->
                        </div>
                        <!-- end videos -->
                    </div>
                    <!-- end widget -->
                    <div class="widget">
                        <div class="banner-spot clearfix">
                            <div class="banner-img">
                                <img
                                        src="<%=blogList.get(0).getImg()%>"
                                        alt=""
                                        class="img-fluid"
                                />
                            </div>
                            <!-- end banner-img -->
                        </div>
                        <!-- end banner -->
                    </div>
                    <!-- end widget -->
                </div>
                <!-- end sidebar -->
            </div>
            <!-- end col -->
        </div>
        <!-- end row -->
    </div>
    <!-- end container -->
</section>
<!-- Content end -->

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
