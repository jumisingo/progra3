<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <style type="text/css">
            #imgid{
                position: absolute;
                top: 40%;
                left: 25%;
                width: 50%;
                height: 80%;
                padding: 0%;
                border: solid 1px rgb(230,230,245);
            }
        </style>
        <meta charset="utf-8" />
        <title>${param.nombre}</title>
        <link href="resources/css/layout.css" rel="stylesheet" type="text/css"/>
        <link href="resources/css/menu.css" rel="stylesheet" type="text/css"/>
        <link rel="icon" type="image/png" href="resources/img/Power-icon.png">
    </head>
    <body>
        <header>
            <h2>TecnoStore</h2>
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
                        <li><a href="contact.jsp">CONTACTO</a></li>
                    </ul></li>
              
                
                <div id="lavalamp"></div>
            </ul>
        </div>
        <sql:query var="info" dataSource="jdbc/sample">
            SELECT * FROM viajes
            WHERE id = '${param.id}'
        </sql:query>


        <c:forEach var="viaje" items="${info.rows}">
            <h1>Destino: ${viaje.destino}</h1>
            <h1>Origen: ${viaje.origen}</h1>
            <h3 class="precio">Precio: ${viaje.precio}$</h3>
            <h3>${viaje.descuento}</h3>
            

        </c:forEach>
           <footer>
            <p>ViajesCR</p>
            <p>25602438</p>
        </footer>
    </body>
</html>
