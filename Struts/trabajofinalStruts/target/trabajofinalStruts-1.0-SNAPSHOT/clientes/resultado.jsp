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
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Resultado</h1>
        
        <p style="width: 400px">
            <s:text name="nuevo.resultado"/>
        </p>
        
        <s:if test="cliente.publicidad == true">
            <p> <s:text name="nuevo.aviso"/></p>
        </s:if>
       

            <hr/>
            


            
            <s:debug/>
    </body>
</html>
