<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>DB SELECT Operation</title>
        <header>        
            <a href="admin.jsp" ><img src="resources/css/Icono-Home1.png" id="home" width="50"/></a>
        </header>
   <body background="resources/img/imagenes productos/consulta.jpg">
    
    <body>
 
        <sql:query var="consultar" dataSource="jdbc/sample">
            SELECT CUSTOMER_ID, DISCOUNT_CODE, ZIP, NAME, CITY FROM DATOSCLIENTE
        </sql:query>
            
            <table border="1">
                <table  align="center" id="tablaBusqueda" border="10" cellspacing="10" cellpadding="8">>
                <thead>
                    <tr>
                        <th>Id Cliente</th>
                        <th>Cod. Desc.</th>
                        <th>Codigo Zip</th>
                        <th>Nombre Cliente</th>
                        <th>Ciudad Cliente</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="consultar" items="${consultar.rows}">
                    <tr>
                        <td>${consultar.CUSTOMER_ID}</td>
                        <td>${consultar.DISCOUNT_CODE}</td>
                        <td>${consultar.ZIP}</td>
                        <td>${consultar.NAME}</td>
                        <td>${consultar.CITY}</td>
                    </tr>
                    </c:forEach>
                </tbody>
                
            </table>
            
            <br>
            <form>
                <input type="button"  value="Inicio" onclick="location.href = 'admin.jsp'"/>
            </form>
            <br/> 

    </body>
</html>
