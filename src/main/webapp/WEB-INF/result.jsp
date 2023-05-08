<%@ page import="java.io.PrintWriter" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Result Calculator</h1>
<c:if test="${requestScope['invalid']!=null}">
    ${requestScope["invalid"]}
</c:if>

<c:if test="${requestScope['invalid']==null}">
    <%
        out.print(Float.parseFloat(request.getParameter("first")));
        out.print(request.getParameter("operator"));
        out.print(Float.parseFloat(request.getParameter("second")));
        out.print("=");
    %>
    ${requestScope["result"]}
</c:if>
<br/>
<a href="http://localhost:8080">Back</a>
</body>
</html>
