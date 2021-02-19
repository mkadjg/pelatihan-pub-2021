<%@page language="java" contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>

<html>
    <head>
        <meta charset="ISO-8859-1">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Pelatihan Java 2021</title>
        <link rel="shortcut icon" href="${contextPath}/assets/pub-logo.png" type="image/x-icon">
        <link href="${contextPath}/webjars/bulma/0.9.1/css/bulma.min.css" rel="stylesheet">
        <link href="${contextPath}/webjars/toastr/2.1.2/build/toastr.min.css" rel="stylesheet">
        <link href="${contextPath}/css/login.css" rel="stylesheet">
    </head>

    <body>
        <div class="column is-4 is-offset-4">

            <form class="box">
                <h3 class="subtitle is-3">Sign In</h3>
                <div class="field">
                    <label class="label">Email</label>
                    <div class="control">
                        <input class="input" name="email" type="email" placeholder="e.g. pub@example.com">
                    </div>
                </div>

                <div class="field">
                    <label class="label">Password</label>
                    <div class="control">
                        <input class="input" name="password" type="password" placeholder="********">
                    </div>
                </div>

                <button type="submit" class="button is-primary">Sign in</button>
            </form>
        </div>

        <script src="${contextPath}/webjars/jquery/3.5.1/jquery.min.js"></script>
        <script src="${contextPath}/webjars/toastr/2.1.2/build/toastr.min.js"></script>
        <script src="${contextPath}/js/login.js"></script>
    </body>
</html>