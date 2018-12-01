<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>TecnoStore</title>
        <link href="./resources/css/admin.css" rel="stylesheet" type="text/css"/>
        <link rel="icon" type="image/png" href="resources/img/Power-icon.png">
    </head>
    <body>
        <header>
            <h2>TecnoStore</h2>
            <a href="index.html" ><img src="resources/css/Icono-Home1.png" id="home"/></a>
        </header>

        <h1>Bienvenid@, Aqui puedes cambiar los precios de los productos</h1>



        <form action="admin.jsp">
            <table border="0" id="busqueda">
                <tbody>
                    <tr>
                        <td>codigo</td>
                        <td><input type="text" value="" name="id"/></td>
                    </tr>
                    <tr>
                        <td>Nombre</td>
                        <td><input type="text" value="" name="nombre"/></td>
                    </tr>
                    <tr>
                        <td>Precio</td>
                        <td><input type="text" value="" name="precio"/></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><input type="submit" value="modificar" name="hacer" /></td>
                        <td><input type="submit" value="buscar" name="hacer" /></td>
                    </tr>
                </tbody>
            </table>

        </form>

        <c:if test="${param.hacer=='modificar'}" var="hacer" scope="request">
            <c:choose>
                <c:when test="${param.id!=''}">
                    <sql:update var="fila" scope="request" dataSource="jdbc/sample">
                        UPDATE productosTecno
                        SET precio = ${param.precio}
                        WHERE id = ${param.id}
                    </sql:update>
                    <h6>Modificacion al producto id:${param.id} realizada con exito</h6>
                </c:when>
                <c:when test="${param.nombre!=''}">
                    <sql:update var="fila" scope="request" dataSource="jdbc/sample">
                        UPDATE productosTecno
                        SET precio = ${param.precio}
                        WHERE nombre = '${param.nombre}'
                    </sql:update>
                    <h6>Modificacion del producto ${param.nombre} realizada con exito</h6>
                </c:when>
                <c:otherwise>
                    <h5>No ingreso ningun dato para realizar la modificacion</h5>
                </c:otherwise>
            </c:choose>
        </c:if>

        <c:if test="${param.hacer=='buscar'}" var="hacer" scope="request">
            <c:choose>
                <c:when test="${param.id!=''}">
                    <sql:query var="filas" dataSource="jdbc/sample">
                        SELECT * FROM productostecno
                        WHERE id = ${param.id}
                    </sql:query>
                    <h6>Busqueda del id ${param.id} realizada con exito</h6>
                </c:when>
                <c:when test="${param.nombre!=''}">
                    <sql:query var="filas" dataSource="jdbc/sample">
                        SELECT * FROM productostecno
                        WHERE nombre = '${param.nombre}'
                    </sql:query>
                    <h6>Busqueda del producto ${param.nombre} realizada con exito</h6>
                </c:when>
                <c:when test="${param.precio!=''}">
                    <sql:query var="filas" dataSource="jdbc/sample">
                        SELECT * FROM productostecno
                        WHERE precio = ${param.precio}
                        ORDER BY ID asc
                    </sql:query>
                    <h6>Busqueda de los productos con el precio ${param.precio} realizada con exito</h6>
                </c:when>
                <c:otherwise>
                    <h5>No ingreso ningun dato para realizar la busqueda</h5>
                </c:otherwise>
            </c:choose>
            <c:if test="${filas.rows!=null}">
                <h3>Resultados de la busqueda</h3>
                <table  align="center" id="tablaBusqueda">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Nombre</th>
                            <th>Precio</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="fila" items="${filas.rows}">
                            <tr>
                                <td>${fila.id}</td>
                                <td>${fila.nombre}</td>
                                <td>${fila.precio}</td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </c:if>
        </c:if>

        <sql:query var="filas" dataSource="jdbc/sample">
            SELECT * FROM productostecno
            ORDER BY nombre ASC
        </sql:query>

        <table  align="center" id="tablaMuestra">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Nombre</th>
                    <th>Precio</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="fila" items="${filas.rows}">
                    <tr>
                        <td>${fila.id}</td>
                        <td>${fila.nombre}</td>
                        <td>${fila.precio}$</td>
                    </tr>
                </c:forEach>
            </tbody>
            
        </table>
            
      <form action="consultardb.jsp" method="post">
   
             <table  align="center" id="tablaBusqueda" border="20" cellspacing="22" cellpadding="8">>
             <thead>
                            <tr>
                        <th colspan="2">Consultar Base de Datos Clientes </th>
                    </tr>
             </thead>
                <tbody>
                    <tr>
                        <td><input type="submit" value="Consultar Datos" /></td>
                    </tr>
                </tbody>
          
           
         </form>
     
                <form action="insertar.jsp" method="post">
          
                <thead>
                    <tr>
                        <th colspan="2">Insertar datos de los Clientes</th>
                    </tr>
                </thead>
                            <tbody>
                    <tr>
                        <td><input type="submit" value="Insertar Datos" /></td>
                    </tr>
                </tbody>
          
        </form>
        
         <form action="modificar.jsp" method="post">
      
              
                    <tr>
                        <th colspan="2">Modificar datos de los Clientes</th>
                    </tr>
           
                <tbody>
                    <tr>
                        <td><input type="submit" value="Modificar Datos" /></td>
                    </tr>
                </tbody>
         
        </form>
        
         <form action="eliminar.jsp" method="post">
            
                <thead>
                    <tr>
                        <th colspan="2">Eliminar datos de Cliente</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><input type="submit" value="Eliminar Datos" /></td>
                    </tr>
                    
                </tbody>
            </table>
             
        </form>
            
        <footer>
            <p>TecnoStore CR</p>
            <p>Todos los derechos reservados</p>
            <p>Christian Carmona</p>
            
            <p>&copy; Copyright TecnoStore Costa Rica</p>
        </footer>
    </body>
</html>
