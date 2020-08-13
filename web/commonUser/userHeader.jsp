<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<header>
    <div class="container">
        <nav class="navbar navbar-expand-lg navbar-light p-0">
            <h1><a class="navbar-brand" href="index.html"><img alt="Brand" src="../img/header-logo.png" width="50" style="margin-right: 15px">招聘网</a></h1>
            <button class="navbar-toggler ml-lg-auto ml-sm-5 bg-light" type="button" data-toggle="collapse"
                    data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                    aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="ml-lg-5 navbar-nav mr-lg-auto">
                    <li class="nav-item active  mr-lg-4 mt-lg-0 mt-sm-4 mt-3">
                        <a href="#">主页</a>
                    </li>
                    <li class="nav-item  mr-lg-4 mt-lg-0 mt-sm-4 mt-3">
                        <a href="#">去应聘</a>
                    </li>
                    <li class="nav-item mr-lg-4 my-lg-0 mb-sm-4 mb-3">
                        <a href="#">查看</a>
                    </li>
                    <li class="nav-item mr-lg-4 my-lg-0 mb-sm-4 mb-3">
                        <a href="#" onclick="userMsg()">个人信息维护</a>
                    </li>
                </ul>
                <button type="button" class="btn w3ls-btn text-uppercase font-weight-bold d-block" data-toggle="modal"
                        aria-pressed="false" data-target="#exampleModal1">
                    <img src="../img/commonUser/person.png" style="margin-right: 5px" alt="">普通用户<span class="username_header"></span>
                </button>
                <div class="btn-group">
                    <button type="button" class="btn w3ls-btn btn-2 ml-lg-1 text-uppercase font-weight-bold d-block btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        登录 <span class="caret"></span>
                    </button>
                    <ul class="dropdown-menu">
                        <li><a href="#">1111</a></li>
                        <li><a href="#">222</a></li>
                        <li><a href="#">333</a></li>
                        <li><a href="#">444</a></li>
                    </ul>
                </div>

            </div>
        </nav>
    </div>
</header>
<!-- //header end-->
