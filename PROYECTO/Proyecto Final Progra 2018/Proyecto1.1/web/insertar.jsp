<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insertar Datos</title>
    </head>
      <body background="resources/img/imagenes productos/insertar.jpg">
    <body>
        <body background="images/pc.jpg">
        <form action="insertardb.jsp" method="post">
            <table border="0" cellspacing="2" cellpadding="5">
                <thead>
                    <tr>
                        <th colspan="2">Insertar Clientes</th>
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
 
        <br>
          <form>
                <input type="button" value="Inicio" onclick="location.href = 'admin.jsp'"/>
            </form>
        <br>

    </body>
    
</html>
