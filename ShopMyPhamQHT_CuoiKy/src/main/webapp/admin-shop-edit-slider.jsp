<%@ page import="qht.shopmypham.com.vn.model.Product" %>
<%@ page import="qht.shopmypham.com.vn.model.Categories" %>
<%@ page import="java.util.List" %>
<%@ page import="java.text.NumberFormat" %>
<%@ page import="qht.shopmypham.com.vn.model.Slider" %>
<%@ page import="qht.shopmypham.com.vn.model.Trademark" %>
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html lang="en">
<head>
    <meta charset="UTF-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta http-equiv="X-UA-Compatible" content="ie=edge"/>
    <title>Edit Product - Dashboard Admin</title>
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

<%
    Slider slider = (Slider) request.getAttribute("slider");
%>
<!--  -->
<div class="container tm-mt-big tm-mb-big">
    <div class="row">
        <div class="col-xl-9 col-lg-10 col-md-12 col-sm-12 mx-auto">
            <div class="tm-bg-primary-dark tm-block tm-block-h-auto">
                <div class="row">
                    <div class="col-12">
                        <h2 class="tm-block-title d-inline-block">Chỉnh sửa slider</h2>
                    </div>
                </div>
                <div class="row tm-edit-product-row">
                    <div class="col-xl-6 col-lg-6 col-md-12">
                        <form action="admin-shop-edit-slider" method="post" class="tm-edit-product-form">
                            <input name="idSl" value="<%=slider.getIdSl()%>" type="hidden">
                            <div class="form-group mb-3">
                                </label>
                                <input
                                        id="name1"
                                        name="img"
                                        type="text"
                                        value="<%=slider.getImg()%>"
                                        class="form-control validate"
                                />
                            </div>
                            <div class="form-group mb-3">
                                <label> Nội dung ảnh </label>
                                <input
                                        id="name"
                                        name="text"
                                        type="text"
                                        value="<%=slider.getText()%>"
                                        class="form-control validate"
                                />
                            </div>
                            <div class="form-group mb-3">
                                <label> Trạng thái: </label>
                                <input
                                        type="checkbox"
                                        name="on"
                                        <%if (slider.getStatus() == 1) {%>
                                        checked <%}%>
                                        value="<%=slider.getStatus()%>"
                                        id="on"
                                        class = "check"
                                        style="margin-bottom: -4px;margin-left: 10px;margin-right: 5px"
                                /><label class="margin-top-check" for="on" style="margin-right: 125px"
                            >Hoạt động</label>
                                <input
                                        type="checkbox"
                                        name="off"
                                        <%if (slider.getStatus() == 0) {%>
                                        checked <%}%>
                                        value="<%=slider.getStatus()%>"
                                        id="off"
                                        class = "check"
                                        style="margin-bottom: -4px;margin-right: 5px"
                                /><label class="margin-top-check" for="off" style="margin-right: 125px"
                            >Không hoạt động</label>
                            </div>
                            <div class="col-12">
                                <button type="submit" class="btn btn-primary btn-block text-uppercase">Cập nhật ngay
                                </button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>
<script src="./js/jquery-3.3.1.min.js"></script>
<!-- https://jquery.com/download/ -->
<script src="./jquery-ui-datepicker/jquery-ui.min.js"></script>
<!-- https://jqueryui.com/download/ -->
<script src="./js/bootstrap.min.js"></script>
<!-- https://getbootstrap.com/ -->
<script>
    $(function () {
        $("#expire_date").datepicker({
            defaultDate: "10/22/2020"
        });
    });
</script>
<script>
    $(document).ready(function () {
        $('.check').click(function () {
            $('.check').not(this).prop('checked', false);
        });
    });

        var on = document.getElementById('on');
        on.onclick = function (e) {
        if (this.checked) {
        on.value = 1;
    }
    };
        var off = document.getElementById('off');
        off.onclick = function (e) {
        if (this.checked) {
        off.value = 1;
    }
    };
</script>
</body>
</html>
