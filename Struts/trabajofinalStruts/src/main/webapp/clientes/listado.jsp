<%-- 
    Document   : listado
    Created on : Mar 11, 2018, 5:19:19 PM
    Author     : ajrey
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Trabajo Final Java Advanced I</title>
    </head>
    <body>        
        <h2><s:text name="enlace.cliente.titulo"/></h2> 
        <s:a action="inicializarCliente"><s:text name="enlace.cliente.nuevo"/></s:a>              
        <br />
        <br />
        <table class="table table-striped table-bordered table-hover">
            <thead>
                <tr>
                <th style="width:40px">Codigo</th>
                <th style="width:150px">Nombres</th>
                <th style="width:150px">Apellidos</th>
                <th style="width:80px">Numero</th>
                <th style="width:20px"></th>
                <th style="width:20px"></th>
                </tr>
            </thead>
            <tbody>
                <s:iterator value="%{listaClientes}">
                    <tr>
                        <td><s:property value="codigo" /></td>
                        <td><s:property value="nombre" /></td>
                        <td><s:property value="apellido" /></td>
                        <td><s:property value="numeroMovil" /></td>
                        <td>
                            <s:url var="editarCli" value="editarCliente">
                                <s:param name="codCli"><s:property value="codigo"/></s:param> 
                            </s:url> 
                            <s:a href="%{editarCli}"><i class="fa fa-edit"></i></s:a>
                        </td>
                        <td>
                            <s:url var="borrarCli" value="eliminarCliente">
                                <s:param name="codCli"><s:property value="codigo"/></s:param> 
                            </s:url> 
                            <s:a href="%{borrarCli}" onclick="return eliminar();"><i class="fa fa-times-circle"></i></s:a>
                        </td>
                        
                    </tr>
                </s:iterator>
            </tbody>
        </table>
            
    </body>
</html>

<script>
    
    function eliminar(){
        return confirm("Esta seguro que desea eliminar?");
    }
    
</script>