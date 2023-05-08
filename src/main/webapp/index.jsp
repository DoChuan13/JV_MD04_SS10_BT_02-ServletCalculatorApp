<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<h1><%= "Hello World!" %>
</h1>
<br/>
<br/>
<form style="width: fit-content; background: beige" method="post" action="calculator">
    <fieldset>
        <legend>Calculator</legend>
        <label style="display: inline-block;width: 150px;">First operand</label>
        <label>
            <input type="number" name="first">
        </label>
        <br/>
        <label style="display: inline-block;width: 150px;">Operator</label>
        <label>
            <select name="operator">
                <option value="+">+</option>
                <option value="-">-</option>
                <option value="*">*</option>
                <option value="/">/</option>
            </select>
        </label>
        <br/>
        <label style="display: inline-block;width: 150px;">Second operand</label>
        <label>
            <input type="number" name="second">
        </label>
        <br/>
        <button type="submit">Calculator</button>
    </fieldset>
</form>
</body>
</html>