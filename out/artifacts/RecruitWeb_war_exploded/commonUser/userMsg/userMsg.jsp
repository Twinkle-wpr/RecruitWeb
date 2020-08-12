<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>普通用户修改信息。。</title>
    <link href="../../css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="style.css" type="text/css" rel="stylesheet">
    <script src="../../js/jquery-2.2.3.min.js"></script>
    <script src="../../js/bootstrap.min.js"></script>
</head>
<body>
<header>
    <div class="container">
        <nav class="navbar navbar-expand-lg navbar-light p-0">
            <h1><a class="navbar-brand" href="index.html"><img alt="Brand" src="img/header-logo.png" width="50" style="margin-right: 15px">招聘网</a></h1>
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
                        <a href="#">个人信息维护</a>
                    </li>
                </ul>
                <button type="button" class="btn w3ls-btn text-uppercase font-weight-bold d-block" data-toggle="modal"
                        aria-pressed="false" data-target="#exampleModal1">
                    <img src="img/person.png" style="margin-right: 5px" alt="">普通用户<span class="username_header"></span>
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
<!--		middle-->
<div class="signupform">
    <div class="container">
        <!-- main content -->
        <div class="agile_info">
            <div class="w3_info" style="margin: auto;">
                <h2>账号</h2>
                <p style="color: gray;margin-left: 5px;"><img src="img/note.png" style="margin-right: 5px" alt="">修改你的信息，下次登录时生效</p>
                <hr style="margin-top: 5px">
                <form action="#" method="post">

                    <p>真实姓名：</p>
                    <div class="input-group">
                        <span class="fa fa-name"></span>
                        <input id="username" type="text" placeholder="请输入你的真实姓名" required="">
                    </div>

                    <p>性别：</p>
                    <div class="input-group">
                        <span class="fa fa-sex"></span>
                        <input id="sex" type="text" placeholder="请输入你的性别" required="">
                    </div>
                    <p>年龄：</p>
                    <div class="input-group">
                        <span class="fa fa-age"></span>
                        <input id="age" type="number" placeholder="请输入你的年龄" required="">
                    </div>
                    <p>邮箱：</p>
                    <div class="input-group">
                        <span class="fa fa-envelope"></span>
                        <input type="email"  placeholder="请输入你的邮箱" required="">
                    </div>
                    <p>手机号码：</p>
                    <div class="input-group">
                        <span class="fa fa-phone"></span>
                        <!--						1[0-9]{10}必须以1开头，后面跟上十位0到9的数字-->
                        <input id="phone" type="telephone" placeholder="请输入你的手机号码(11位)" pattern="^1[0-9]{10}$" required="">
                    </div>
                    <p>工作类型：</p>
                    <div class="input-group">
                        <span class="fa fa-jobType"></span>
                        <input type="text" placeholder="请输入你的工作类型" required="">
                    </div>
                    <p>登录密码：</p>
                    <div class="input-group">
                        <span class="fa fa-lock"></span>
                        <!--						字母开头，长度在6~18之间，只能包含字母、数字和下划线 ^[a-zA-Z]\w{5,17}$-->
                        <input type="Password" placeholder="请输入你的登录密码" required="" onchange="checkPwd(this)">
                    </div>
                    <p>个人简介：</p>
                    <textarea class="form-control" rows="8" style="margin-top: 14px"></textarea>
                    <button class="btn btn-info btn-block" type="button">保存修改</button >
                </form>
            </div>
        </div>
        <!-- //main content -->
    </div>
    <!-- footer -->
    <div class="footer">
        <p>&copy; 2020 design by <a href="#" target="blank">hire</a></p>
    </div>
    <!-- footer -->
</div>
</body>
</html>
