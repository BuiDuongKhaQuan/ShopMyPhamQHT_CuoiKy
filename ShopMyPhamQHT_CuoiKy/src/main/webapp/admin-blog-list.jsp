<%@ page import="java.util.List" %>
<%@ page import="qht.shopmypham.com.vn.model.Blog" %>
<%@ page import="qht.shopmypham.com.vn.model.BlogOffer" %>
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
    <title>Product Page - Admin HTML</title>
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

<jsp:include page="admin-header.jsp"></jsp:include>
<!--  -->

<div class="container container1 mt-5">
    <div class="row tm-content-row">
        <div class="col-sm-12 col-md-12 col-lg-8 col-xl-15 tm-block-col">
            <div class="tm-bg-primary-dark tm-block tm-block-products">
                <div style="display: flex; justify-content: space-between">
                    <h2 class="tm-block-title">Danh sách nội dung</h2>
                    <form class="tm-block-title" action="admin-blog-search" method="get"
                          style="border: 1px solid var(--border-color); ">
                        <% String txtInput = (String) request.getAttribute("txtSearch"); %>
                        <div class="input-group">
                            <%if (txtInput != null) {%>
                            <input
                                    type="text"
                                    name="topic"
                                    class="form-control"
                                    placeholder="Nhập tiêu đề"
                                    value="<%=txtInput%>"
                            />
                            <%} else {%>
                            <input
                                    type="text"
                                    name="topic"
                                    class="form-control"
                                    placeholder="Nhập tiêu đề"
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
                </div>
                <div class="tm-product-table-container">
                    <table class="table table-hover tm-table-small tm-product-table">
                        <thead>
                        <tr>
                            <th scope="col">&nbsp;</th>
                            <th scope="col">Số TT</th>
                            <th scope="col" style="min-width: 100px">Hình ảnh</th>
                            <th scope="col">Tiêu đề</th>
                            <th scope="col">&nbsp;</th>
                        </tr>
                        </thead>
                        <tbody>
                        <% List<Blog> blogList = (List<Blog>) request.getAttribute("blogList");
                            int a = 0;
                            for (Blog b : blogList) {
                                a++;%>

                        <tr>
                            <th scope="row"><input type="checkbox"/></th>
                            <td><%=a%>
                            </td>
                            <td>
                                <a href="admin-blog-edit?idBl=<%=b.getIdBl()%>" style="color: white">
                                    <img src="<%=b.getImg()%>" style="width: 320px;">
                                </a>
                            </td>
                            </td>
                            <td style="padding-left: 40px"><%=b.getTopic()%>
                            </td>

                            <td>
                                <a href="admin-blog-delete?idBl=<%=b.getIdBl()%>"
                                   class="tm-product-delete-link">
                                    <i class="far fa-trash-alt tm-product-delete-icon"></i>
                                </a>
                            </td>
                        </tr>
                        <%}%>
                        </tbody>
                    </table>
                </div>
                <!-- table container -->
                <a
                        href="admin-blog-add"
                        class="btn btn-primary btn-block text-uppercase mb-3"
                >Thêm nội dung mới</a
                >
            </div>
        </div>
        <div class="col-sm-12 col-md-12 col-lg-8 col-xl-14 tm-block-col">
            <div class="tm-bg-primary-dark tm-block tm-block-products">
                <div style="display: flex; justify-content: space-between">
                    <h2 class="tm-block-title">Danh sách đề xuất</h2>
                    <form class="tm-block-title" action="admin-blogOffer-search" method="get"
                          style="border: 1px solid var(--border-color); ">
                        <% String txtInput1 = (String) request.getAttribute("txtSearch1"); %>
                        <div class="input-group">
                            <%if (txtInput1 != null) {%>
                            <input
                                    type="text"
                                    name="topic"
                                    class="form-control"
                                    placeholder="Nhập tiêu đề"
                                    value="<%=txtInput1%>"
                            />
                            <%} else {%>
                            <input
                                    type="text"
                                    name="topic"
                                    class="form-control"
                                    placeholder="Nhập tiêu đề"
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
                </div>
                <div class="tm-product-table-container">
                    <table class="table table-hover tm-table-small tm-product-table">
                        <thead>
                        <tr>
                            <th scope="col" style="min-width: 100px">Hình ảnh</th>
                            <th scope="col">Tiêu đề</th>
                            <th scope="col">&nbsp;</th>
                        </tr>
                        </thead>
                        <tbody>
                        <% List<BlogOffer> blogOfferList = (List<BlogOffer>) request.getAttribute("blogOfferList");
                            for (BlogOffer bo : blogOfferList) {%>

                        <tr>
                            <td>
                                <a href="admin-blog-offer-edit?idBv=<%=bo.getIdBv()%>" style="color: white">
                                    <img src="<%=bo.getImg()%>" style="width: 250px;">
                                </a>
                            </td>
                            </td>
                            <td style="padding-left: 40px"><%=bo.getTopic()%>
                            </td>
                            <td>
                                <a href="admin-blog-offer-delete?idBv=<%=bo.getIdBv()%>"
                                   class="tm-product-delete-link">
                                    <i class="far fa-trash-alt tm-product-delete-icon"></i>
                                </a>
                            </td>
                        </tr>
                        <%}%>
                        </tbody>
                    </table>
                </div>
                <!-- table container -->
                <a
                        href="admin-blog-offer-add"
                        class="btn btn-primary btn-block text-uppercase mb-3"
                >Thêm nội dung mới</a
                >
                <%--                <button class="btn btn-primary btn-block text-uppercase">--%>
                <%--                    Xóa sản phẩm đã chọn--%>
                <%--                </button>--%>
            </div>
        </div>
    </div>
</div>
<footer class="tm-footer row tm-mt-small">
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

<script src="./js/jquery-3.3.1.min.js"></script>
<!-- https://jquery.com/download/ -->
<script src="./js/bootstrap.min.js"></script>
<!-- https://getbootstrap.com/ -->

</body>
</html>
