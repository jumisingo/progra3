<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Modificar Datos</title>
    </head>
    
    <body>
       <body background="resources/img/imagenes productos/modificar.jpg">
        <form action="modificardb.jsp" method="post">
            <table border="0" cellspacing="2" cellpadding="5">
                <thead>
                    <tr>
                        <th colspan="2">Modificar Clientes</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><label>Id Actual: </label></td>
                        <td><input type="text" name="id"/></td> <td>(Obligatorio)</td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><label>---------------------------</label></td>
                    <tr>
                        <td><label>Nuevo Codigo Descuento</label></td>
                        <td><input type="text" name="desc"/></td>
                    </tr>
                    <tr>
                        <td><label>Nuevo Zip </label></td>
                        <td><input type="text" name="zip"/></td>
                    </tr>
                    <tr>
                        <td><label>Nuevo Nombre </label></td>
                        <td><input type="text" name="nombre"/></td>
                    </tr>
                    <tr>
                        <td><label>Nueva Ciudad </label></td>
                        <td><input type="text" name="ciudad"/></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Modificar Datos" /></td>
                        <td><input type="reset" value="Borrar Info"/></td>
                    </tr>
                </tbody>
            </table>
        </form>
 
        <br>
         <a  <form>
                <input type="button" value="Inicio" onclick="location.href = 'admin.jsp'"/>
            </form>
        <br>

        <footer>
            <p>ViajesCR</p>
            <p>25602438</p>
        </footer>
    </body>
    
</html>
