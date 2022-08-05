<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>

<html>
<head>
    <title>Udemy demo course Home page</title>
</head>

<body>
    <h2>Udemy demo course Home page</h2>
    <hr>

    <p>
    Welcome to Udemy demo course Home page!
    </p>

    <hr>
    <!-- Display username and role -->
    <p>
        User: <security:authentication property="principal.username" />
        <br><br>
        Role(s): <security:authentication property="principal.authorities" />
    </p>
    <hr>

    <security:authorize access="hasRole('MANAGER')">
        <!-- Add a link to point to /leaders for managers -->
        <p>
            <a href="${pageContext.request.contextPath}/leaders">LeaderShip Meeting</a>
            (Only for Manager peeps)
        </p>
    </security:authorize>

    <security:authorize access="hasRole('ADMIN')">
        <!-- Add a link to point to /systems for admin -->
        <p>
            <a href="${pageContext.request.contextPath}/systems">IT Systems Meeting</a>
            (Only for Admin users)
        </p>
    </security:authorize>

    <!-- Add logout button-->
    <form:form action="${pageContext.request.contextPath}/logout"
           method="post">
        <input type="submit" value="Logout" />

    </form:form>

</body>

</html>
