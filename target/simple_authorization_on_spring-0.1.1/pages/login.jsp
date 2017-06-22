<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width-device-width, initial-scale=1.0">
    <meta name="author" content="shpilly_willy">

    <title>Spring Security</title>

    <link href="<c:url value="\pages\css\bootstrap.css" />" rel="stylesheet">

    <link href="<c:url value="\pages\css\signin.css" />" rel="stylesheet">

  </head>

  <body>

    <div class="container" style="width: 300px;">
      <c:url value="/j_spring_security_check" var="loginUrl" />
      <form action="${loginUrl}" method="post">
        <h2 class="form-signin-heading">Please sign in</h2>
        <input type="text" class="form-control" name="j_username" placeholder="Login" value="shpilly_willy">
        <input type="password" class="form-control" name="j_password" placeholder="Password" value="1234">
        <button class="bnt btn-lg btn-primary btn-block" type="submit">Войти</button>
      </form>
    </div>

  </body>

</html>
