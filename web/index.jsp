<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta charset="utf-8">
  <title>主页</title>
  <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css">
  <link href="css/commonUser/index_style.css" type="text/css" rel="stylesheet" media="all">
  <link href="css/boss/bossFrom_style.css" type="text/css" rel="stylesheet" media="all">
  <script type="text/javascript" src="${pageContext.request.contextPath}/js/boss.js"></script>
  <script src="js/jquery-2.2.3.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
</head>
<body>
<!-- header -->
<%@ include file="indexHeader.jsp" %>
<!-- //header end-->
<!--registerMain-->
<%@ include file="indexMain.jsp" %>
<!-- footer -->
<div class="footer">
    <%@ include file="indexFooter.jsp" %>
</div>
<!-- footer -->
</body>
</html>

