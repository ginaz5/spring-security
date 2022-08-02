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

    <!-- Add logout button-->
    <form:form action="${pageContext.request.contextPath}/logout"
           method="post">
        <input type="submit" value="Logout" />

    </form:form>

</body>

</html>
