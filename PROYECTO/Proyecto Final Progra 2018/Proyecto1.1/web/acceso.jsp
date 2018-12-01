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

                <li><a class="hsubs" href="#">DETALLES</a>
                    <ul class="subs">
                        <li><a href="ConsultaProductos.jsp">Mas Vendidos</a></li>
                        <li><a href="mouse.html">Nuevos</a></li>
                        <li><a href="mouse.html">Menos Vendidos</a></li>
                    </ul>
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
        <form action="ProcesarAdmin" method="POST" style="position: absolute; top: 40%; left: 20%;">
            <table border="0">
                <tbody>
                    <tr>
                        <td>Nombre(administrador)</td>
                        <td><input type="text" name="nombre" value="" /></td>
                    </tr>
                    <tr>
                        <td>Contraseña</td>
                        <td><input type="password" name="contrasena" value="" /></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><input type="submit" name="ingresar" value="Ingresar" /></td>
                    </tr>
                </tbody>
            </table>
        </form>
        
   
        
        <footer style="position: absolute; top: 75.7%">
            <p>TecnoStore CR</p>
            <p>Todos los derechos reservados</p>
            <p>Christian Carmona</p>
            <p>Keylor Badilla</p>
            <p>Julian Vanegas</p>
            <p>&copy; Copyright TecnoStore Costa Rica</p>
        </footer>
    </body>
</html>
