<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="w3_info">
    <h2>免费注册，获得高薪！</h2>
    <p>请输入信息注册</p>
    <form id="from_userregister" action="#" method="post" >
        <label style="margin-bottom: 0">邮件地址：</label>
        <div class="input-group">
            <span class="fa fa-envelope"></span>
            <input type="email" name="email" placeholder="请输入你的邮箱" required="">
        </div>
        <label style="margin-bottom: 0">密码：</label>
        <div class="input-group">
            <span class="fa fa-lock"></span>
            <input type="Password"  name="password"  placeholder="请输入你的密码" required="" pattern="^\w{6,16}$">
        </div>
        <label style="margin-bottom: 0">验证码：</label>
        <div class="input-group">
            <span class="fa fa-code"></span>
            <input type="text" class="captcha" name="captcha" placeholder="请输入验证码" required="">
        </div>
        <div  id="captcha-img" value="" style="width: 150px;height: 45px;background: #54ABED;display: inline-block"></div>
        <span id="captcha_change_text"  onClick="" style="font-size: 13px;margin-left: 10px;color: #0B39A7;">看不清？换一张</span>
        <button class="btn btn-danger btn-block" type="submit">免费注册</button >
    </form>
    <p class="account">已有账号? 直接 <a href="#" data-toggle="modal" data-target="#exampleModal">登录</a></p>
</div>