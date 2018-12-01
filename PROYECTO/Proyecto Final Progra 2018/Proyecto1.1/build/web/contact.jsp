<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insertar Datos</title>
    </head>
      <body background="resources/img/imagenes productos/contacto.png">
    <body>
        <body background="images/pc.jpg">
        
 
        <br>
          <form>
                <input type="button" value="Inicio" onclick="location.href = 'index.html'"/>
            </form>
        <br>

        <body>
      

        <c:if test="${ empty param.id or empty param.desc or empty param.zip or empty param.nombre or empty param.ciudad}">
            <c:redirect url="insertcontacto.jsp" >
                <c:param name="errMsg" value="Favor ingresar todos los datos" />
            </c:redirect>
        </c:if>
       

        <sql:update var="insertar" dataSource="jdbc/sample">
            INSERT INTO contactos (ID,NOMBRECLIENTE, APELLIDOCLIENTE, DIRECCIONCLIENTE, TELEFONOCLIENTE, CORREOCLIENTE) VALUES (?, ?, ?, ?, ?)
            <sql:param value='${param["id"]}' />
            <sql:param value='${param["NOMBRE"]}' />
            <sql:param value='${param["APELLIDO"]}' />
            <sql:param value='${param["DIRECCION"]}' />
            <sql:param value='${param["TELEFONO"]}' />
            <sql:param value='${param["CORREO"]}' />
        </sql:update>
            
        
        <c:if test="${insertar>=1}">
            <font size="5" color='green'> Datos insertados correctamente </font>
            <c:redirect url="insertcontacto.jsp" >
                <c:param name="susMsg" value="Datos insertados correctamente" />
            </c:redirect>
        </c:if> 
            
    </body>
  

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>DB SELECT Operation</title>
        <header>        
            <a href="index.html" ><img src="resources/css/Icono-Home1.png" id="home" width="50"/></a>
        </header>
  <body background="resources/img/imagenes productos/contacto.png">
    
    <body>
 
                
            </table>
            
            <br>
            <form>
                <input type="button"  value="Inicio" onclick="location.href = 'index.html'"/>
            </form>
            <br/> 
        <footer>
            <p>ViajesCR</p>
            <p>25602438</p>
        </footer>
    </body>
</html>
      
        
        
        
        
        

    
