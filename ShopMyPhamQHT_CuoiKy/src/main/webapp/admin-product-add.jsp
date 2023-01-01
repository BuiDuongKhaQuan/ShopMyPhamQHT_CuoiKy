<%@ page import="qht.shopmypham.com.vn.model.Categories" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
    <title>Add Product - Dashboard</title>
    <link
            rel="stylesheet"
            href="https://fonts.googleapis.com/css?family=Roboto:400,700"
    />
    <!-- https://fonts.google.com/specimen/Roboto -->
    <link rel="stylesheet" href="./css/fontawesome.min.css"/>
    <!-- https://fontawesome.com/ -->
    <link rel="stylesheet" href="./jquery-ui-datepicker/jquery-ui.min.css" type="text/css"/>
    <!-- http://api.jqueryui.com/datepicker/ -->
    <link rel="stylesheet" href="./css/bootstrap.min.css"/>
    <!-- https://getbootstrap.com/ -->
    <link rel="stylesheet" href="./css/templatemo-style.css">
    <link href="https://cdn.jsdelivr.net/gh/hung1001/font-awesome-pro-v6@44659d9/css/all.min.css" rel="stylesheet"
          type="text/css"/>
    <!--
        Product Admin CSS Template
        https://templatemo.com/tm-524-product-admin
        -->
</head>

<body>
<jsp:include page="admin-header.jsp"></jsp:include>
<div class="container container1 tm-mt-big tm-mb-big">
    <div class="row">
        <div class="col-xl-16 col-lg-10 col-md-12 col-sm-12 mx-auto">
            <div class="row tm-content-row">
                <div class="tm-block-col tm-col-avatar1">
                    <div class="tm-bg-primary-dark tm-block1 tm-block-avatar1 img-flex">
                        <div class="tm-avatar-container img-p">
                            <img
                                    src=""
                                    alt="Avatar"
                                    class="tm-avatar img-fluid mb-4"
                            />
                        </div>
                        <div class="tm-avatar-container img-p">
                            <img
                                    src=""
                                    alt="Avatar"
                                    class="tm-avatar img-fluid mb-4"
                            />
                        </div>
                        <div class="tm-avatar-container img-p">
                            <img
                                    src=""
                                    alt="Avatar"
                                    class="tm-avatar img-fluid mb-4"
                            />
                        </div>
                        <div class="tm-avatar-container img-p">
                            <img
                                    src=""
                                    alt="Avatar"
                                    class="tm-avatar img-fluid mb-4"
                            />
                        </div>
                    </div>
                </div>
                <div class="tm-block-col tm-col-account-settings">
                    <div class="tm-bg-primary-dark tm-block tm-block-settings">
                        <h2 class="tm-block-title">Thông tin sản phẩm</h2>
                        <form action="admin-product-add" method="post" class="tm-signup-form row">
                            <div class="form-group col-lg-6">
                                <label for="name">Tên</label>
                                <input
                                        id="name"
                                        name="name"
                                        value=""
                                        type="text"
                                        class="form-control validate"
                                />
                            </div>
                            <div class="form-group col-lg-6">
                                <label for="email">Xuất sứ</label>
                                <input
                                        id="email"
                                        name="trademark"
                                        value=""
                                        type="text"
                                        class="form-control validate"

                                />
                            </div>
                            <div class="form-group col-lg-6">
                                <label for="name">Hình ảnh</label>
                                <input
                                        id="name1"
                                        name="img1"
                                        value=""
                                        type="text"
                                        class="form-control validate"
                                />
                                <input
                                        id="name2"
                                        name="img2"
                                        value=""
                                        type="text"
                                        class="form-control validate"
                                />
                                <input
                                        id="name3"
                                        name="img3"
                                        value=""
                                        type="text"
                                        class="form-control validate"
                                />
                                <input
                                        id="name4"
                                        name="img4"
                                        value=""
                                        type="text"
                                        class="form-control validate"
                                />
                            </div>
                            <div class="form-group col-lg-6">
                                <label
                                        for="description"
                                >Mô tả chi tiết</label
                                >
                                <textarea
                                        class="form-control validate tm-small"
                                        rows="5"
                                        name="information"
                                        required
                                        style="height: 200px"
                                ></textarea>
                            </div>
                            <div class="form-group col-lg-6">
                                <label for="name">Phân loại</label>
                                <select name="category"
                                        class="custom-select tm-select-accounts"
                                        id="category"
                                >
                                    <% List<Categories> categoriesList = (List<Categories>) request.getAttribute("categoriesList");
                                        for (Categories c : categoriesList) {
                                    %>
                                    <option value="<%=c.getIdC()%>"><%=c.getNameC()%>
                                    </option>
                                    <%}%>
                                </select>
                            </div>
                            <div class="form-group col-lg-6">
                                <label for="phone">Giá</label>
                                <input
                                        id="phone"
                                        name="price"
                                        value=""
                                        type="price"
                                        class="form-control validate"
                                />
                            </div>
                            <div class="form-group col-lg-6">
                                <label for="phone">Số lượng</label>
                                <input
                                        id="phone1"
                                        name="quantity"
                                        value=""
                                        type="number"
                                        class="form-control validate"
                                />
                            </div>
                            <div class="form-group col-lg-6">
                                <label class="tm-hide-sm">&nbsp;</label>
                                <button
                                        type="submit"
                                        class="btn btn-primary btn-block text-uppercase"
                                >
                                    Thêm sản phẩm
                                </button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<footer class="tm-footer row tm-mt-small">
    <div class="col-12 font-weight-light">
        <p class="text-center text-white mb-0 px-4 small">
            Copyright &copy; <b>2021</b> All rights reserved.

            Design: <a rel="nofollow noopener" href="https://templatemo.com" class="tm-footer-link">QHT</a>
        </p>
    </div>
</footer>

<script src="./js/jquery-3.3.1.min.js"></script>
<!-- https://jquery.com/download/ -->
<script src="./jquery-ui-datepicker/jquery-ui.min.js"></script>
<!-- https://jqueryui.com/download/ -->
<script src="./js/bootstrap.min.js"></script>
<!-- https://getbootstrap.com/ -->
<script>
    $(function () {
        $("#expire_date").datepicker();
    });
</script>
</body>
</html>
