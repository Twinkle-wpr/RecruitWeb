<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="signupform">
    <div class="container">
        <!-- main content -->
        <div class="agile_info">
            <%@ include file="indexMainLeft.jsp" %>
            <div class="agile_info_right">
            <%@ include file="commonUser/indexMainRight_userRegister.jsp"%>
            </div>
        </div>
        <!-- //main content -->
    </div>
    <!--		为 .modal 添加 role="dialog"，用于指定模态框为对话框。-->
    <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h4 class="modal-title" id="exampleModalLabel">欢迎登录！</h4>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                </div>

                <div class="modal-body">
                    <form id="from_userlogin" method="post">
                        <div class="form-group">
                            <label  class="control-label">邮箱</label>
                            <input type="email" class="form-control" name="email" style="border: 1px solid #8F8D8D;">
                        </div>
                        <div class="form-group">
                            <label  class="control-label">密码</label>
                            <input  type="Password" name="password" class="form-control" style="border: 1px solid #8F8D8D;">
                        </div>
                        <div class="modal-footer" style="margin-top: 50px">
                            <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
<%--                            登录之后才跳转到新页面--%>
                            <button type="submit" class="btn btn-primary" onclick="loginServlet('${pageContext.request.contextPath}/users?code=login')">登录</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>

    </div>
</div>