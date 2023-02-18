<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Import JSON</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.1/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
    <form role="form" action="/contact/import" method="post" enctype="multipart/form-data">
        <h3>Import of contacts</h3>
            <select class="form-select form-control form-group" name="group">
                 <option value="-1">Default</option>

                 <c:forEach items="${groups}" var="group">
                      <option value="${group.id}">${group.name}</option>
                 </c:forEach>
            </select>

            <h3>Select JSON file with contacts to import</h3>
            <input class="form-control form-horizontal" type="file" name="file">

        </select>
        <br/>
        <input type="submit" class="btn btn-primary" value="Send">
    </form>
</div>
</body>
</html>