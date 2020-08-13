<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script src="../js/bootstrap.min.js"></script>
<link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css">
<div class="w3_info_boss">
    <h2>企业HR用户注册</h2>
    <p>请输入信息注册</p>
    <form action="#" method="post">
        <div class="input-group">
            <span class="fa fa-name"></span>
            <input id="username" type="text" name="Username" placeholder="请输入用户名" required="">
        </div>
        <div class="input-group">
            <span class="fa fa-envelope"></span>
            <input type="email" name="Email" placeholder="请输入你的邮箱" required="">
        </div>
        <div class="input-group">
            <span class="fa fa-lock"></span>
            <!--						字母开头，长度在6~18之间，只能包含字母、数字和下划线 ^[a-zA-Z]\w{5,17}$-->
            <input type="Password" name="Password" placeholder="请输入你的密码" required="" onchange="checkPwd(this)">
        </div>
        <div class="input-group">
            <span class="fa fa-phone"></span>
            <!--						1[0-9]{10}必须以1开头，后面跟上十位0到9的数字-->
            <input id="phone" type="telephone" name="Phone" placeholder="请输入你的手机号码(11位)" pattern="^1[0-9]{10}$" required="">
        </div>
        <button class="btn btn-danger btn-block" type="submit">免费注册</button >
    </form>
    <p class="account">已有账号? 直接 <a href="#" data-toggle="modal" data-target="#exampleModal" onclick="bossLogin()">登录</a></p>
</div>
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="exampleModalLabel">欢迎您的登录！</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
            </div>

            <div class="modal-body">
                <form id="from_userlogin" method="post">
                    <div class="form-group">
                        <label  class="control-label">邮箱</label>
                        <input type="Email" class="form-control" name="email" style="border: 1px solid #8F8D8D;">
                    </div>
                    <div class="form-group">
                        <label  class="control-label">密码</label>
                        <input  type="Password" name="Password" class="form-control" style="border: 1px solid #8F8D8D;">
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