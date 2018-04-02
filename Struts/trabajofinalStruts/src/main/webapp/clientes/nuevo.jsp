<%-- 
    Document   : paso
    Created on : 2/11/2012, 11:04:45 AM
    Author     : portatil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib prefix="s" uri="/struts-tags"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Trabajo Final Java Advanced I</title>
        <s:head/>
    </head>
    <body>   

        <h2><s:text name="formulario.titulo.nuevo"/></h2>        
        <s:a action="listarCliente"> <s:text name="enlace.main.volver"/></s:a>       
        <s:form action="registrarCliente" class="form-inline">
        
            <s:label key="formulario.nombre" /><s:textfield name="cliente.nombre" class="form-control" />
            <s:label key="formulario.apellido" /><s:textfield name="cliente.apellido" class="form-control" />
            <s:label key="formulario.genero" /><s:radio name="cliente.genero" list="#{'M':'Masculino','F':'Femenino'}" class=""/>
            <s:label key="formulario.profesion" /><s:select name="cliente.profesion" list="#{'A1':'Arquitectura','D1':'Derecho','M1':'Marketing'}"
                      headerKey=""
                      headerValue="---Seleccione---"  class="form-control" />
            <s:label key="formulario.numeroMovil" /><s:textfield key="formulario.numeroMovil" name="cliente.numeroMovil" class="form-control" />
            <s:checkbox key="formulario.publicidad" name="cliente.publicidad" class="" /> 
            <s:label key="formulario.correoElectronico" /><s:textfield key="formulario.correoElectronico" name="cliente.correo" class="form-control"/>
        
            <s:submit key="formulario.boton" class="btn btn-default"/>
        </s:form> 
        <p><s:actionmessage/></p>
        
    </body>
</html>

