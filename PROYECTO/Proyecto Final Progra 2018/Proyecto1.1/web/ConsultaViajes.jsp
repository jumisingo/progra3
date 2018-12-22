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
        <title>Lista de Viajes</title>
    </head>
    
    <body>
         <header>
            <h2>ViajesCR - Consulta Viajes</h2>
        </header>
            <div class="container">
            

            <ul id="nav">
                <li><a href="index.html"> INICIO </a></li>
               
                <li><a class="hsubs" href="#">DETALLES</a>
                    <ul class="subs">
                        <li><a href="ConsultaViajes.jsp">Paquetes</a></li>
                       
                    </ul>
                </li>
                <li><a href="#">CONTACTENOS</a>
                    <ul class="subs">
                        <li><a href="contact.jsp">CONTACTENOS</a></li>
                    </ul></li>
              
                <li>
                    <a href="faces/Create.xhtml">Contacto</a>
                </li>
                <div id="lavalamp"></div>
            </ul>
            
        <div class="container">

            
               
                
   <sql:query var="consultar" dataSource="jdbc/sample">
            SELECT codigo,PRECIO,destino,origen FROM app.VIAJE
        </sql:query>
                
            <table cellpadding="0" border="18" aling="center" cellspacing="20">
             
                 <thead>
                        <tr>PLAN<th>
                        <th>DESTINO </th>
                        <th>ORIGEN</th>
                        <th>PRECIO</th>
                        <th>DESCUENTO</th>
                        
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="consultar" items="${consultar.rows}">
                    <tr>
                        <th>${consultar.id}</th>
                        <td>${consultar.origen}</td>
                        <td>${consultar.destino}</td>
                        <td>${consultar.precio}</td>
                        <td>${consultar.descuento}</td>
                    </tr>
                    </c:forEach>
                </tbody>
            </table>
             
            
        
        </div>   
        </div>
                     
        <footer>
            <p>ViajesCR</p>
            <p>25602438</p>
        </footer>
    </body>
</html>
