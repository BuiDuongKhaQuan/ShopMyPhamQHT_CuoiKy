<%@ page import="java.util.List" %>
<%@ page import="qht.shopmypham.com.vn.model.Blog" %>
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
        <% Blog blog = (Blog) request.getAttribute("blog");
        %>
        <div class="row tm-content-row">

            <div class="tm-block-col tm-col-avatar">
                <div class="tm-bg-primary-dark tm-block tm-block-avatar" style="height: 490px">
                    <h2 class="tm-block-title">Ảnh blog</h2>
                    <div class="tm-avatar-container">
                        <img
                                src="<%=blog.getImg()%>"
                                alt="Avatar"
                                class="tm-avatar img-fluid mb-4"
                        />
                    </div>
                </div>
            </div>
            <div class="tm-block-col tm-col-account-settings">
                <div class="tm-bg-primary-dark tm-block tm-block-settings">
                    <h2 class="tm-block-title">Nội dung</h2>
                    <form action="admin-blog-edit" method="post" class="tm-signup-form row">
                        <input value="<%=blog.getIdBl()%>" name="idBl" type="hidden">
                        <div class="form-group col-lg-6">
                            <label for="name">Tiêu đề</label>
                            <input
                                    id="name"
                                    name="topic"
                                    value="<%=blog.getTopic()%>"
                                    type="text"
                                    class="form-control validate"
                            />
                        </div>
                        <div class="form-group col-lg-6">
                            <label for="email">Link liên kết</label>
                            <input
                                    id="email"
                                    name="link"
                                    value="<%=blog.getLinkBlog()%>"
                                    type="text"
                                    class="form-control validate"

                            />
                        </div>
                        <div class="form-group col-lg-6">
                            <label for="email">Ảnh</label>
                            <input
                                    id="email1"
                                    name="img"
                                    value="<%=blog.getImg()%>"
                                    type="text"
                                    class="form-control validate"

                            />
                        </div>
                        <div class="form-group col-lg-6">
                            <label
                                    for="infor"
                            >Nội dung tóm tắt</label
                            >
                            <textarea
                                    class="form-control validate tm-small"
                                    rows="5"
                                    name="shortContent"
                                    required
                                    style="height: 200px"
                                    id="infor"
                            ><%=blog.getShortContent()%></textarea>
                        </div>
                        <div class="form-group col-lg-6">
                            <label class="tm-hide-sm">&nbsp;</label>
                            <button
                                    type="submit"
                                    class="btn btn-primary btn-block text-uppercase"
                            >
                                Cập nhật
                            </button>
                        </div>
                        <div class="col-12">
                            <a
                                    href="admin-blog-delete?idBl=<%=blog.getIdBl()%>"
                                    class="btn btn-primary btn-block text-uppercase"
                            >
                                Xóa blog
                            </a>
                        </div>
                    </form>
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
</div>

<script src="./js/jquery-3.3.1.min.js"></script>
<!-- https://jquery.com/download/ -->
<script src="./js/bootstrap.min.js"></script>
<!-- https://getbootstrap.com/ -->
</body>
</html>
