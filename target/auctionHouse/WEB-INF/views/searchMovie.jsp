<%--
  Created by IntelliJ IDEA.
  User: dominik
  Date: 09.05.18
  Time: 10:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" integrity="sha384-WskhaSGFgHYWDcbwN70/dfYBj47jz9qbsMId/iRN3ewGhXQFZCSftd1LZCfmhktB" crossorigin="anonymous">

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js" integrity="sha384-smHYKdLADwkXOn1EmN1qk/HfnUcbVRZyYmZ4qpPea6sjB/pTJ0euyQp0Mk8ck+5T" crossorigin="anonymous"></script>
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

</body>
</html>
