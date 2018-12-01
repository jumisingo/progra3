
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>DB DELETE Operation</title>
    </head>
    
    <body>
        <body background="images/pc.jpg">

        <c:if test="${ empty param.id}">
            <c:redirect url="eliminar.jsp" >
                <c:param name="errMsg" value="Favor ingresar todos los datos" />
            </c:redirect>
        </c:if>
       
        <sql:update var="eliminar" dataSource="jdbc/sample">
            DELETE FROM CUSTOMER WHERE CUSTOMER_ID=${param["id"]}
        </sql:update>
        
        <c:if test="${eliminar>=1}">
            <font size="5" color='green'> Datos eliminados correctamente </font>
            <c:redirect url="eliminar.jsp" >
                <c:param name="susMsg" value="Datos eliminados correctamente" />
            </c:redirect>
        </c:if> 
            
        <c:if test="${eliminar<1}">
            <h1>error de datos</h1>
            <font size="5" color='red'> Datos no existen en la DB </font>
            <c:redirect url="eliminar.jsp" >
                <c:param name="errMsg" value="Datos no existen en la DB" />
            </c:redirect>
        </c:if> 
          <footer>
            <p>ViajesCR</p>
            <p>25602438</p>
        </footer> 
    </body>
</html>