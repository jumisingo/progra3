
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>DB UPDATE Operation</title>
    </head>
    
    <body>
        <body background="images/pc.jpg">

        <c:if test="${ empty param.id}">
            <c:redirect url="modificar.jsp" >
                <c:param name="errMsg" value="Favor ingresar los campos obligatorios" />
            </c:redirect>
        </c:if>
       
        <c:if test="${not empty param.desc}">
            <sql:update var="modificar" dataSource="jdbc/sample">            
                UPDATE DATOSCLIENTE SET DISCOUNT_CODE = ? WHERE CUSTOMER_ID=${param["id"]}
                <sql:param value='${param["desc"]}' /> 
            </sql:update>
        </c:if>

        <c:if test="${not empty param.zip}">
            <sql:update var="modificar" dataSource="jdbc/sample">
                UPDATE DATOSCLIENTE SET ZIP = ? WHERE CUSTOMER_ID=${param["id"]}
                <sql:param value='${param["zip"]}' /> 
            </sql:update>
        </c:if>
                    
        <c:if test="${not empty param.nombre}">
            <sql:update var="modificar" dataSource="jdbc/sample">
                UPDATE DATOSCLIENTE SET NAME = ? WHERE CUSTOMER_ID=${param["id"]}
                <sql:param value='${param["nombre"]}' /> 
            </sql:update>
        </c:if>

        <c:if test="${not empty param.ciudad}">                
            <sql:update var="modificar" dataSource="jdbc/sample">
                UPDATE DATOSCLIENTE SET CITY = ? WHERE CUSTOMER_ID=${param["id"]}
                <sql:param value='${param["ciudad"]}' /> 
            </sql:update>
        </c:if>
        
            
        <c:if test="${modificar>=1}">
            <font size="5" color='green'> Datos modificados correctamente </font>
            <c:redirect url="modificar.jsp" >
                <c:param name="susMsg" value="Datos modificados correctamente" />
            </c:redirect>
        </c:if> 
            
    </body>
</html>