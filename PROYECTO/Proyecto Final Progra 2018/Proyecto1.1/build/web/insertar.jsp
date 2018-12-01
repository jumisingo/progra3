<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <link href="resources/css/layout.css" rel="stylesheet" type="text/css"/>
        <link href="resources/css/menu.css" rel="stylesheet" type="text/css"/>
        <title>ViajesCR - Insertar Contacto</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insertar Datos</title>
    </head>
      <body>
    <body>
        <header>
            <h2>ViajesCR</h2>
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
              
                
                <div id="lavalamp"></div>
            </ul>
            
        </div>
        <form action="insertardb.jsp" method="post">
            <table border="0" cellspacing="2" cellpadding="5">
                <thead>
                    <tr>
                        <th colspan="2">ViajesCR - Insertar Contacto</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><label>Id </label></td>
                        <td><input type="text" name="id"/></td>
                    </tr>
                    <tr>
                        <td><label>Codigo Descuento</label></td>
                        <td><input type="text" name="desc"/></td>
                    </tr>
                    <tr>
                        <td><label>Zip </label></td>
                        <td><input type="text" name="zip"/></td>
                    </tr>
                    <tr>
                        <td><label>Nombre </label></td>
                        <td><input type="text" name="nombre"/></td>
                    </tr>
                    <tr>
                        <td><label>Ciudad </label></td>
                        <td><input type="text" name="ciudad"/></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Insertar Datos" /></td>
                        <td><input type="reset" value="Borrar Info"/></td>
                    </tr>
                </tbody>
            </table>
        </form>
    </body>
</html>
