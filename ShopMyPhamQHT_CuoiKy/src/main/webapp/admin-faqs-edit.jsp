<%@ page import="qht.shopmypham.com.vn.model.Product" %>
<%@ page import="qht.shopmypham.com.vn.model.Categories" %>
<%@ page import="java.util.List" %>
<%@ page import="java.text.NumberFormat" %>
<%@ page import="qht.shopmypham.com.vn.service.TrademarkService" %>
<%@ page import="qht.shopmypham.com.vn.model.FAQs" %>
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
    FAQs faQs = (FAQs) request.getAttribute("faQs");
%>
<!--  -->
<div class="container container1 tm-mt-big tm-mb-big">
    <div class="row">
        <div class="col-xl-16 col-lg-10 col-md-12 col-sm-12 mx-auto">
            <div class="row tm-content-row">
                <div class="tm-block-col tm-col-account-settings1" style="margin: 0 auto;">
                    <div class="tm-bg-primary-dark tm-block tm-block-settings">
                        <h2 class="tm-block-title">Thông tin câu hỏi</h2>
                        <form action="admin-faqs-edit" method="post" class="tm-signup-form row">
                            <input value="<%=faQs.getIdF()%>" name="idF" type="hidden">
                            <div class="form-group col-12">
                                <label for="name">Câu hỏi</label>
                                <input
                                        id="name"
                                        name="question"
                                        value="<%=faQs.getQuestion()%>"
                                        type="text"
                                        class="form-control validate"
                                />
                            </div>
                            <div class="form-group col-12">
                                <label
                                        for="infor"
                                >Câu trả lời</label
                                >
                                <textarea
                                        id="infor"
                                        class="form-control validate tm-small"
                                        rows="5"
                                        name="answer"
                                        required
                                        style="height: 200px"
                                ><%=faQs.getAnswer()%></textarea>
                            </div>

                            <div class="form-group col-lg-6">
                                <label class="tm-hide-sm">&nbsp;</label>
                                <button
                                        type="submit"
                                        class="btn btn-primary btn-block text-uppercase"
                                >
                                    Lưu chỉnh sửa
                                </button>
                            </div>
                            <div class="form-group col-lg-6">
                                <label class="tm-hide-sm">&nbsp;</label>
                                <a
                                        href="admin-faqs-delete?idF=<%=faQs.getIdF()%>"
                                        class="btn btn-primary btn-block text-uppercase"
                                >
                                    Xóa câu hỏi
                                </a>
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

            Design: <a rel="nofollow noopener" href="https://templatemo.com" class="tm-footer-link">Template Mo</a>
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
        $("#expire_date").datepicker({
            defaultDate: "10/22/2020"
        });
    });
</script>
</body>
</html>
