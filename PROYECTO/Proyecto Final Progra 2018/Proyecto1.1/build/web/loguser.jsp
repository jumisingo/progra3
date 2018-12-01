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

            
               
                
   <sql:query var="consultar" dataSource="jdbc/sample">
            SELECT ID,NOMBRE,PRECIO,DISPONBILIDAD FROM VPRODUCTOS
        </sql:query>
                
            <table cellpadding="0" border="18" aling="center" cellspacing="20">
             
                 <thead>
                    <tr>
                        <th>Id </th>
                        <th>NOMBRE</th>
                        <th>PRECIO</th>
                        <th>DISPONBILIDAD</th>
                        
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="consultar" items="${consultar.rows}">
                    <tr>
                        <td>${consultar.ID}</td>
                        <td>${consultar.NOMBRE}</td>
                        <td>${consultar.PRECIO}</td>
                        <td>${consultar.DISPONBILIDAD}</td>
                    </tr>
                    </c:forEach>
                </tbody>
            </table>
            <br>
            <form>
                <input type="button" value="Inicio" onclick="location.href = 'index.html'"/>
            </form>
            <br/>                    
                
            </ul>
        </div>   
            
                     
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
