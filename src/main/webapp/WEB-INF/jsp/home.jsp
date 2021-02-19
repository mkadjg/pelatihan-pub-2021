<%@page language="java" contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>

<html>
    <head>
        <meta charset="ISO-8859-1">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Pelatihan Java 2021</title>
        <link rel="shortcut icon" href="${contextPath}/assets/pub-logo.png" type="image/x-icon">
        <link href="${contextPath}/webjars/bulma/0.9.1/css/bulma.min.css" rel="stylesheet">
        <link href="${contextPath}/css/home.css" rel="stylesheet">
    </head>

    <body>

        <nav class="navbar is-light" role="navigation" aria-label="main navigation">
            <div class="navbar-brand">
                <a class="navbar-item" href="https://pubpasim.org/">
                    <img src="${contextPath}/assets/pub-website-logo.png">
                </a>

                <a role="button" class="navbar-burger" aria-label="menu" aria-expanded="false" data-target="navbarBasicExample">
                    <span aria-hidden="true"></span>
                    <span aria-hidden="true"></span>
                    <span aria-hidden="true"></span>
                </a>
            </div>

            <div id="navbarBasicExample" class="navbar-menu">
                <div class="navbar-start">
                    <a class="navbar-item">
                        Home
                    </a>

                    <a class="navbar-item">
                        Documentation
                    </a>

                    <div class="navbar-item has-dropdown is-hoverable">
                        <a class="navbar-link">
                            More
                        </a>

                        <div class="navbar-dropdown">
                            <a class="navbar-item">
                                About
                            </a>
                            <a class="navbar-item">
                                Jobs
                            </a>
                            <a class="navbar-item">
                                Contact
                            </a>
                            <hr class="navbar-divider">
                            <a class="navbar-item">
                                Report an issue
                            </a>
                        </div>
                    </div>
                </div>

                <div class="navbar-end">
                    <div class="navbar-item">
                        <div class="buttons">
                            <a class="button is-primary">
                                <strong>Sign up</strong>
                            </a>
                            <a href="/login/" class="button is-light">
                                Log in
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </nav>

        <div class="columns">
            <div class="column is-one-fifth">
                <aside class="menu">
                    <p class="menu-label">
                        General
                    </p>
                    <ul class="menu-list">
                        <li><a class="is-active">Users</a></li>
                        <li><a>Customers</a></li>
                    </ul>
                    <p class="menu-label">
                        Administration
                    </p>
                    <ul class="menu-list">
                        <li><a>Team Settings</a></li>
                        <li><a>Invitations</a></li>
                        <li><a>Authentication</a></li>
                    </ul>
                    <p class="menu-label">
                        Transactions
                    </p>
                    <ul class="menu-list">
                        <li><a>Payments</a></li>
                        <li><a>Transfers</a></li>
                        <li><a>Balance</a></li>
                    </ul>
                </aside>
            </div>

            <div class="column">
                <table class="table is-bordered is-hoverable">
                    <thead>
                        <tr>
                            <th>No</th>
                            <th>Username</th>
                            <th>Email</th>
                            <th>Fullname</th>
                            <th>Address</th>
                        </tr>
                    </thead>
                    <tbody id="users">
                    </tbody>
                </table>
            </div>
        </div>

    <script src="${contextPath}/webjars/jquery/3.5.1/jquery.min.js"></script>
    <script src="${contextPath}/js/home.js"></script>
    </body>
</html>