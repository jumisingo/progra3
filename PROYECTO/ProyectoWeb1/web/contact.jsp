<%-- 
    Document   : contact
    Created on : 16/11/2018, 10:16:34 PM
    Author     : cvanegas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@taglib prefix="f" uri="http://java.sun.com/jsf/core"%>
<%@taglib prefix="h" uri="http://java.sun.com/jsf/html"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<f:view>
    <html>
        <head>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
            <title>JSP Page</title>
        </head>
        <body>
        <title>Confirmacion</title>


    <body>
        <h3>Contactenos</h3>
        <form>
            <table border="0">                
                <tbody>
                    <tr>
                        <td>Nombre</td>
                        <td><input type="text" name="nombre" value="" size="30" /></td>
                    </tr>
                    <tr>
                        <td>Apellido</td>
                        <td><input type="text" name="apellido" value="" size="30" /></td>
                    </tr>
                    <tr>
                        <td>Telefono</td>
                        <td><input type="text" name="telefono" value="" size="10"/></td>
                    </tr>
                    <tr>
                        <td>Correo</td>
                        <td><input type="text" name="correo" value="" size="30"/></td>
                    </tr>
                    <tr>
                        <td>Detalle</td>
                        <td><input type="text" name="detalle" value="" size="50" /></td>
                    </tr>
                    <tr>
                        <td>Comentario</td>
                        <td><input type="text" name="comentario" value="" size="128"/></td>
                    </tr>
                    <tr>
                        <td></td>
                        <td>
                        <input type="submit" value="insertar" name="accion" /></td>
                    </tr>
                </tbody>
//crear base de datos
//request debe ir a Model, model llama a PersonaBean, y devuelve confirmacion pasandole
//parametros de personaBean

//en confirmacion estara la etiqueta JSTL update que se ejecutara.
            
            ${personaBean.nombre}
            ${personaBean.nombre}
            ${personaBean.phone}
            ${personaBean.detail}
            ${personaBean.comments}
            $${personaBean.correo}
            
        </form>
        </body>
    </html>
</f:view>
