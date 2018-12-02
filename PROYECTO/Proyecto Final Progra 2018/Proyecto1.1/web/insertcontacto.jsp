<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="resources/css/layout.css" rel="stylesheet" type="text/css"/>
        <link href="resources/css/menu.css" rel="stylesheet" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ViajesCR - Insertar Contacto</title>
    </head>
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
                <li>
                    <a href="faces/Create.xhtml">Contacto</a>
                </li>
                
                <div id="lavalamp"></div>
            </ul>
            <div class="container">
        <form action="contact.jsp" method="post">
            <table border="0" cellspacing=" 2" cellpadding="5">
                <thead>
                    <tr>
                        <th colspan="2">Inserte sus Datos</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><label>Nombre </label></td>
                        <td><input type="text" name="nombre"/></td>
                    </tr>
                    <tr>
                        <td><label>Apellido</label></td>
                        <td><input type="text" name="apellido"/></td>
                    </tr>
                    <tr>
                        <td><label>Direccion </label></td>
                        <td><input type="text" name="direccion"/></td>
                    </tr>
                    <tr>
                        <td><label>Telefono </label></td>
                        <td><input type="text" name="telefono"/></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Insertar Datos" /></td>
                        <td><input type="reset" value="Borrar Info"/></td>
                    </tr>
                </tbody>
            </table>
        </form>
        </div>
        </div>
        
        <footer>
            <p>ViajesCR</p>
            <p>25602438</p>
        </footer>
    </body>
    
</html>
