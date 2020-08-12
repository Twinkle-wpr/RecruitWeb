<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>企业用户注册登录</title>
</head>
<link href="../../css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="css/style.css" type="text/css" rel="stylesheet" media="all">
<script src="../../js/jquery-2.2.3.min.js"></script>
<script src="../../js/bootstrap.min.js"></script>
<body>
<!-- header -->
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
                        <a href="index.html">主页</a>
                    </li>
                    <li class="nav-item  mr-lg-4 mt-lg-0 mt-sm-4 mt-3">
                        <a href="about.html">关于我们</a>
                    </li>
                    <li class="nav-item mr-lg-4 my-lg-0 mb-sm-4 mb-3">
                        <a href="contact.html">联系我们</a>
                    </li>
                </ul>
                <button type="button" class="btn w3ls-btn text-uppercase font-weight-bold d-block" data-toggle="modal"
                        aria-pressed="false" data-target="#exampleModal1">
                    企业用户登录
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
            <div class="w3l_form">
                <div class="left_grid_info">
                    <h1 style="margin-bottom: 5px;">欢迎来到招聘网</h1>
                    <p style="color: gray;font-style: italic">更多人才等你发掘！</p>
                    <img src="img/loginleft.jpg" alt="" />
                </div>
            </div>
            <div class="w3_info">
                <h2>企业HR用户注册</h2>
                <p>请输入信息注册</p>
                <form action="#" method="post">
                    <div class="input-group">
                        <span class="fa fa-name"></span>
                        <input id="username" type="text" placeholder="请输入用户名" required="">
                    </div>
                    <div class="input-group">
                        <span class="fa fa-envelope"></span>
                        <input type="email" placeholder="请输入你的邮箱" required="">
                    </div>
                    <div class="input-group">
                        <span class="fa fa-lock"></span>
                        <!--						字母开头，长度在6~18之间，只能包含字母、数字和下划线 ^[a-zA-Z]\w{5,17}$-->
                        <input type="Password" placeholder="请输入你的密码" required="" onchange="checkPwd(this)">
                    </div>
                    <div class="input-group">
                        <span class="fa fa-phone"></span>
                        <!--						1[0-9]{10}必须以1开头，后面跟上十位0到9的数字-->
                        <input id="phone" type="telephone" placeholder="请输入你的手机号码(11位)" pattern="^1[0-9]{10}$" required="">
                    </div>
                    <button class="btn btn-danger btn-block" type="submit">免费注册</button >
                </form>
                <p class="account">已有账号? 直接 <a href="#" data-toggle="modal" data-target="#exampleModal">登录</a></p>
            </div>
        </div>
        <!-- //main content -->
        <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title" id="exampleModalLabel">欢迎登录！</h4>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    </div>

                    <div class="modal-body">
                        <form id="from_userlogin">
                            <div class="form-group">
                                <label  class="control-label">邮箱:</label>
                                <input type="email" class="form-control" name="login_email" style="border: 1px solid #8F8D8D;">
                            </div>
                            <div class="form-group">
                                <label  class="control-label">密码:</label>
                                <input  type="Password" name="login_password" class="form-control" style="border: 1px solid #8F8D8D;">
                            </div>
                            <div class="modal-footer" style="margin-top: 50px">
                                <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                                <button type="submit" class="btn btn-primary">登录</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>

        </div>
    </div>
    <!-- footer -->
    <div class="footer">
        <p>&copy; 2020 design by <a href="#" target="blank">hire</a></p>
    </div>
    <!-- footer -->
</div>
</body>
</html>
