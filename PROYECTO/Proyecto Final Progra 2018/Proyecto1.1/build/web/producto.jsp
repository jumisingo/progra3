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
                <li><a class="hsubs" href="#"> COMPUTADORAS </a>
                    <ul class="subs">
                        <li><a href="laptops.html">Laptop</a></li>
                        <li><a href="gaming.html">Gaming</a></li>
                        <li><a href="oficina.html">Oficina/Hogar</a></li>
                    </ul>
                </li>
                <li><a class="hsubs" href="#"> COMPONENTES </a>
                    <ul class="subs">
                        <li><a href="procesadores.html">Procesadores</a></li>
                        <li><a href="tarjetamadre.html">Tarjeta Madre</a></li>
                        <li><a href="ram.html">Memoria RAM</a></li>
                        <li><a href="tarjetasvideo.html">Tarjetas de Video</a></li>
                        <li><a href="almacenamiento.html">Almacenamiento</a></li>
                        <li><a href="enfriamiento.html">Enfriamiento</a></li>
                        <li><a href="cases.html">Cases</a></li>
                        <li><a href="monitores.html">Monitores</a></li>
                    </ul>
                </li>
                
                <li><a class="hsubs" href="#">PERIFÉRICOS</a>
                    <ul class="subs">
                        <li><a href="teclados.html">Teclados</a></li>
                        <li><a href="mouse.html">Mouse</a></li>
                        <li><a href="headset.html">Headset</a></li>
                        <li><a href="parlantes.html">Parlantes</a></li>
                    </ul>
                </li>
                <li><a href="#">CONSOLAS</a>
                    <ul class="subs">
                        <li><a href="Games.html">CONSOLAS</a></li>
                    </ul></li>
                <li><a href="#">CONTACTENOS</a></li>
                <li><a href="acceso.jsp">INI. SESION</a>
                </li>
                <div id="lavalamp"></div>
            </ul>
        </div>
        <sql:query var="info" dataSource="jdbc/sample">
            SELECT * FROM productosTECNO
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
    </body>
</html>
