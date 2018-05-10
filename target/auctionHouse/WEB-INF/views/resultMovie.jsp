<%--
  Created by IntelliJ IDEA.
  User: dominik
  Date: 09.05.18
  Time: 10:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <title>Result of Movie Search</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
          integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
            integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
            crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
            integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
            crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"
            integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T"
            crossorigin="anonymous"></script>

</head>
<body>
<div class="container card">
    <div class="pageheader">
        <h1>Witaj w wyszukiwarce filmów!</h1>
        <h3> Znajdź swój Film na dzisiaj!</h3>
    </div>
</div>
<form method="post">
    <div class="container card">
        <div class="input-group mb-3">
            <div class="input-group-prepend">
                <label class="input-group-text" for="filmName">Nazwa Filmu</label>
            </div>
            <input type="text" class="form-control" name="filmName" id="filmName" placeholder="Podaj nazwę filmu">
        </div>
        <button class="btn btn-light" type="submit">SZUKAJ</button>
    </div>
</form>
<div class="container">
    <div class="row">
        <c:forEach items="${movies}" var="movie">

            <%--<div class="card col-sm-3" style="width: 18rem;">--%>
                <%--<img class="card-img-top" src="https://image.tmdb.org/t/p/w185_and_h278_bestv2${movie.posterURL}"--%>
                     <%--alt="Movie poster">--%>
                <%--<div class="card-body">--%>
                    <%--<h5 class="card-title">${movie.orginalTitle}</h5>--%>
                    <%--<p class="card-text">${movie.overview}</p>--%>
                    <%--<p class="card-text">${movie.date}</p>--%>
                <%--</div>--%>
            <%--</div>--%>
            <div class="col-sm-6 card">
                <div class="well well-sm">
                    <div class="row">
                        <div class="col-md-6">
                            <img src="https://image.tmdb.org/t/p/w185_and_h278_bestv2${movie.posterURL}"
                                 class="img-rounded img-responsive well-image">
                        </div>
                        <div class="col-md-6">
                            <h4>${movie.orginalTitle}</h4>
                            <p><strong>Data publikacji: </strong>${movie.date}</p>
                                <%--@elvariable id="movieToAdd" type="pl.coderslab.model.Movie"--%>
                            <form:form method="post" action="addToWatch" modelAttribute="movieToAdd">
                                <form:hidden path="orginalTitle" name="originalTitle" value="${movie.orginalTitle}"/>
                                <form:hidden path="posterURL" name="posterUrl" value="${movie.posterURL}"/>
                                <form:hidden path="date" name="date" value="${movie.date}"/>
                                <form:hidden path="overview" name="title" value="${movie.overview}"/>
                                <button type="submit" class="btn btn-primary pull-right">Do Obejrzenia</button>
                            </form:form>
                                <%--@elvariable id="movieToAdd" type="pl.coderslab.model.Movie"--%>
                            <form:form method="post" action="addWatched" modelAttribute="movieToAdd">
                                <form:hidden path="orginalTitle" name="originalTitle" value="${movie.orginalTitle}"/>
                                <form:hidden path="posterURL" name="posterUrl" value="${movie.posterURL}"/>
                                <form:hidden path="date" name="date" value="${movie.date}"/>
                                <form:hidden path="overview" name="title" value="${movie.overview}"/>
                                <button type="submit" class="btn btn-primary pull-right">Obejrzane</button>
                            </form:form>
                        </div>
                    </div><!-- row -->
                </div><!-- well -->
            </div><!-- col-xs-6 -->


        </c:forEach>
    </div>
</div>

<%--<table>--%>
<%--&lt;%&ndash;@elvariable id="movie" type="pl.coderslab.model.Movie"&ndash;%&gt;--%>
<%--<c:forEach items="${movies}" var="movie">--%>
<%--&lt;%&ndash;<td><c:out value="${film}" /></td>&ndash;%&gt;--%>
<%--<tr>--%>
<%--<td>${movie.overview}</td>--%>
<%--<td>${movie.orginalTitle}</td>--%>
<%--<td>${movie.date}</td>--%>
<%--<td>${movie.posterURL}</td>--%>
<%--</tr>--%>
<%--</c:forEach>--%>


<%--</table>--%>
</body>
</html>
