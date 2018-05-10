<%--
  Created by IntelliJ IDEA.
  User: dominik
  Date: 27.04.18
  Time: 10:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">
    <title>Title</title>
</head>
<body>
<%--@elvariable id="tweet" type="pl.coderslab.model.Tweet"--%>
<form:form method="post" modelAttribute="tweet">
    <%--<form:hidden path="id" value="${tweet.getId()}" />--%>
    <%--<label>Title</label> <form:input path="title" name="title" value="${tweet.title}"/>--%>
    <%--<form:errors path="title"></form:errors>--%>
    <%--<label>Tweet Text</label><form:textarea path="tweetText" name="tweetText" value="${tweet.tweetText}"/>--%>
    <%--<form:errors path="tweetText"></form:errors>--%>
    <%--<label>User</label><form:select path="user.id" items="${users}" itemValue="id" itemLabel="firstName"/>--%>
    <%--<form:errors path="user.id"></form:errors>--%>
    <%--<button type="submit">DODAJ</button>--%>


<div class="container card">
    <div class="input-group mb-3">
        <div class="input-group-prepend">
            <label class="input-group-text" for="inputGroupSelect01">League</label>
        </div>
        <select class="custom-select" id="inputGroupSelect01">
            <option selected>Choose...</option>
            <option value="1">Standard</option>
            <option value="2">Hardcore</option>
            <option value="3">Bestiary HC</option>
            <option value="3">Bestiary SC</option>
        </select>
        <div class="input-group-prepend">
            <label class="input-group-text" for="inputGroupSelect02">Type</label>
        </div>
        <select class="custom-select" id="inputGroupSelect02">
            <option selected>Choose...</option>
            <option value="1">Armour</option>
            <option value="2">Belt</option>
            <option value="3">Gelmet</option>
        </select>
    </div>
    <div class="input-group mb-3">
        <div class="input-group-prepend">
            <label class="input-group-text" for="inputGroupSelect03">Name</label>
        </div>
        <input type="text" class="form-control" id="inputGroupSelect03">
    </div>
    <div class="input-group mb-3">
        <div class="input-group-prepend">
            <label class="input-group-text" for="inputGroupSockets">Sockets</label>
        </div>
        <input type="number" class="form-control" id="inputGroupSockets">
        <div class="input-group-prepend">
            <label class="input-group-text" for="inputGroupLinks">Links</label>
        </div>
        <input type="number" class="form-control" id="inputGroupLinks">
    </div>
</div>
</form:form>
</body>
</html>

