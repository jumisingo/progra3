<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Eliminar Datos</title>
    </head>
       <body background="resources/img/imagenes productos/eliminar.jpg">
    <body>
        <body background="images/pc.jpg">
        
        <form action="eliminardb.jsp" method="post">
            <table border="0" cellspacing="2" cellpadding="5">
                <thead>
                    <tr>
                        <th colspan="2">Eliminar Clientes</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><label>Eliminar por Id </label></td>
                        <td><input type="text" name="id"/></td>
                    </tr>
                    <tr>
                        <td><input type="submit" value="Eliminar Datos" /></td>
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

        <footer>
            <p>ViajesCR</p>
            <p>25602438</p>
        </footer>
    </body>
    
</html>
