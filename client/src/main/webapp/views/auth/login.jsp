<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@ include file="../components/layout/page-header.jsp" %>
</head>
<body>
<%@ include file="../components/atoms/navbar.jsp" %>
<div class="container mt-5" style="width: 100%;max-width: 700px">
    <h1 class="text-primary fw-bold">Welcome Back. Login!</h1>
    <c:if test="${not empty param['registered']}">
        <div class="alert alert-success">
            <strong>Success!</strong> You have registered. Login!
        </div>
    </c:if>
    <c:if test="${not empty error}">
        <div class="alert alert-danger" role="alert">
                ${error}
        </div>
    </c:if>
    <div class="mt-5">
        <form action="/auth/login" method="post">
            <div class="form-group">
                <label for="email">Email or Phone Number</label>
                <input type="email" name="login" class="form-control" id="email" placeholder="Enter email or Phone number">
            </div>
            <div class="form-group mt-2">
                <label for="password">Password</label>
                <input type="password" name="password" class="form-control" id="password" placeholder="Password">
            </div>
            <div class="mt-5">
                <button type="submit" class="btn btn-primary">Login</button>
            </div>
        </form>
    </div>
    <div class="mt-5">
        <a href="/auth/register">Don't have an account ? Register</a>
    </div>
</div>

<%@ include file="../components/layout/page-footer.jsp" %>
</body>
</html>
