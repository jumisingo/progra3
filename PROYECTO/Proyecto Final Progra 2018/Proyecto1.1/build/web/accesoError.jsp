<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>TecnoStore</title>
        <link href="./resources/css/layout.css" rel="stylesheet" type="text/css"/>
        <link href="./resources/css/menu.css" rel="stylesheet" type="text/css"/>
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

        <div>
            <h1>No se ha logrado ingresar correctamente<br> esta es una seccion de administradores</h1>
                <jsp:useBean id="admin" scope="request" class="dao.Administrador" />
            <h3>Si eres un admin,<jsp:getProperty name="admin" property="nombre" /> <br> 
                con contraseña <jsp:getProperty name="admin" property="contraseña" /> <br>
                son datos incorrectos.</h3>
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
