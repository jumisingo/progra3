<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
<link href="resources/css/layout.css" rel="stylesheet" type="text/css"/>
<link href="resources/css/menu.css" rel="stylesheet" type="text/css"/>
<link rel="icon" type="image/png" href="resources/img/Power-icon.png">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de Producto</title>
    </head>
    
    <body>
        <body background="resources/img/imagenes productos/LISTA.png">
            
         <header>
            <h2>TecnoStore</h2>
        </header>
        <div class="container">

            
               
                
   <sql:query var="info" dataSource="jdbc/sample">
            SELECT * FROM FACTURA
            WHERE nombre = '${param.nombre}'
        </sql:query>


        <c:forEach var="informe" items="${info.rows}">
            <h1>${informe.nombre}</h1>
            <h3 class="precio">Precio: ${informe.precio}$</h3>
            <img src="${informe.N_imagen}" id="imgid">

        </c:forEach>
            <footer style="position: absolute; top: 140%;">
            <p>TecnoStore CR</p>
            <p>Todos los derechos reservados</p>
            <p>Christian Carmona Ramos</p>
            <p>&copy; Copyright TecnoStore Costa Rica</p>
        </footer>

            
            
            
            <footer>
            <p>TecnoStore CR</p>
            <p>Todos los derechos reservados</p>
            <p>Christian Carmona</p>
            <p>Keylor Badilla</p>
            <p>Julian Vanegas</p>
            <p>&copy; Copyright TecnoStore Costa Rica</p>
        </footer>
    </body>
</html>

