<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="signupform">
    <div class="container">
        <!-- main content -->
        <div class="agile_info">
            <div class="w3_info" style="margin: auto;">
                <h2>账号</h2>
                <p style="color: gray;margin-left: 5px;"><img src="../img/commonUser/note.png" style="margin-right: 5px" alt="">修改你的信息，下次登录时生效</p>
                <hr style="margin-top: 5px">
                <form action="#" method="post">

                    <p>真实姓名：</p>
                    <div class="input-group">
                        <span class="fa fa-name"></span>
                        <input id="username" type="text" name="username" placeholder="请输入你的真实姓名" required="">
                    </div>

                    <p>性别：</p>
                    <div class="input-group">
                        <span class="fa fa-sex"></span>
                        <input id="sex" type="text" name="sex" placeholder="请输入你的性别" required="">
                    </div>
                    <p>年龄：</p>
                    <div class="input-group">
                        <span class="fa fa-age"></span>
                        <input id="age" type="number" name="age" placeholder="请输入你的年龄" required="">
                    </div>
                    <p>邮箱：</p>
                    <div class="input-group">
                        <span class="fa fa-envelope"></span>
                        <input type="email"  name="email" placeholder="请输入你的邮箱" required="">
                    </div>
                    <p>手机号码：</p>
                    <div class="input-group">
                        <span class="fa fa-phone"></span>
                        <!--						1[0-9]{10}必须以1开头，后面跟上十位0到9的数字-->
                        <input id="phone" type="telephone" name="phone" placeholder="请输入你的手机号码(11位)" pattern="^1[0-9]{10}$" required="">
                    </div>
                    <p>工作类型：</p>
                    <div class="input-group">
                        <span class="fa fa-jobType"></span>
                        <input type="text" name="personInfo" placeholder="请输入你的工作类型" required="">
                    </div>
                    <p>登录密码：</p>
                    <div class="input-group">
                        <span class="fa fa-lock"></span>
                        <!--						字母开头，长度在6~18之间，只能包含字母、数字和下划线 ^[a-zA-Z]\w{5,17}$-->
                        <input type="Password" name="password" placeholder="请输入你的登录密码" required="" onchange="checkPwd(this)">
                    </div>
                    <p>个人简介：</p>
                    <textarea class="form-control" rows="8" style="margin-top: 14px"></textarea>
                    <button class="btn btn-info btn-block" type="button">保存修改</button >
                </form>
            </div>
        </div>
        <!-- //main content -->
    </div>
</div>