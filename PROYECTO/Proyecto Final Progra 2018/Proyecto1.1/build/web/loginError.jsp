<%-- 
    Document   : LoginError
    Created on : 08-abr-2016, 18:53:39
    Author     : Laboratorio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>S&amp;V</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
        <link rel=stylesheet href="resources/css/plan.css">
        <style type="text/css">
            body {
	background-image: url(resources/images/fondo.jpg);
	text-align: center;
        color: white;}              
        </style>
    </head>
    <body>
        <h1>Inicio de sesion</h1>
        <br>
        <br>
         <form action="Login" class="formulario" name="formulario_registro" method="post">
              
				<div id="apDiv3">
                                      <h1>ERROR al Iniciar Sesion</h1>
        <%@include file="WEB-INF/jspm/formulario.jspf" %>
                                </div>
         </form>
    </body>
</html>
