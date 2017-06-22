<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>

 <!DOCTYPE html>
 <html lang="en">
   <head>
     <meta charset="utf-8">
     <meta http-equiv="X-UA-Compatible" content="IE=edge">
     <meta name="viewport" content="width-device-width, initial-scale=1.0">
     <meta name="author" content="shpilly_willy">

     <title>Spring Security</title>

     <!--Bootstrap core CSS -->
     <link href="<c:url value="\pages\css\bootstrap.css" />" rel="stylesheet">

     <link href="<c:url value="\pages\css\jumbotron-narrow.css" />" rel="stylesheet">

   </head>

   <body>

     <div class="container">

       <div class="jumbotron" style="margin-top: 20px;">
         <h1>Spring Security</h1>
         <sec:authorize access="!isAuthenticated()">
           <p><a class="btn btn-lg btn-success" href="<c:url value="/login" />" role="button">Войти</a></p>
         </sec:suthorize>

         <sec:authorize access="isAuthenticated()">
           <p>Ваш логин: <sec:authentication property="principal.username" /></p>
           <p><a class="btn btn-lg btn-danger" href="<c:url value="/logout" />" role="button">Выйти</a></p>
         </sec:suthorize> 

       </div>

     </body>

   </html>
