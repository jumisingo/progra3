
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>DB INSERT Operation</title>
    </head>
    
    <body>
      

        <c:if test="${ empty param.id or empty param.desc or empty param.zip or empty param.nombre or empty param.ciudad}">
            <c:redirect url="insertar.jsp" >
                <c:param name="errMsg" value="Favor ingresar todos los datos" />
            </c:redirect>
        </c:if>
       

        <sql:update var="insertar" dataSource="jdbc/sample">
            INSERT INTO DATOSCLIENTE (CUSTOMER_ID, DISCOUNT_CODE, ZIP, NAME, CITY) VALUES (?, ?, ?, ?, ?)
            <sql:param value='${param["id"]}' />
            <sql:param value='${param["desc"]}' />
            <sql:param value='${param["zip"]}' />
            <sql:param value='${param["nombre"]}' />
            <sql:param value='${param["ciudad"]}' />
        </sql:update>
            
        
        <c:if test="${insertar>=1}">
            <font size="5" color='green'> Datos insertados correctamente </font>
            <c:redirect url="insertar.jsp" >
                <c:param name="susMsg" value="Datos insertados correctamente" />
            </c:redirect>
        </c:if> 
            
    </body>
</html>