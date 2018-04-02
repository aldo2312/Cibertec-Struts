<%-- 
    Document   : index
    Created on : 2/11/2012, 11:04:33 AM
    Author     : portatil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib prefix="s" uri="/struts-tags"%>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Trabajo Final Java Advanced I</title>
    <!-- Bootstrap core CSS-->
    <link href="content/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom fonts for this template-->
    <link href="content/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <!-- Custom styles for this template-->
    <link href="css/sb-admin.css" rel="stylesheet">
    <s:head/>
</head>    
    
<body class="bg-dark">
  <div class="container">
      <div class="card card-login mx-auto mt-5" style="width: 35%;height: 35%">
      <div class="card-header">Login</div>
      <div class="card-body">
        <s:form action="login">           
            <s:textfield key="formulario.username" name="usuario.username" class="form-control"/>
            <s:password key="formulario.password" name="usuario.password" class="form-control"/>
            <s:submit key="formulario.boton" class="btn btn-default" />
        </s:form>
        <div class="text-center">
            <s:actionerror/>        
            <s:url var="ingles" includeParams="all" value="">
                    <s:param name="request_locale">en</s:param>
            </s:url>	
            <s:url var="espanol" includeParams="all" value="">
                    <s:param name="request_locale">es</s:param>
            </s:url>

             <s:a href="%{ingles}">Ingles</s:a>
             <s:a href="%{espanol}">Español</s:a>       
        </div>
      </div>
    </div>
  </div>
  <!-- Bootstrap core JavaScript-->
  <script src="content/js/jquery.min.js"></script>
  <script src="content/js/bootstrap.bundle.min.js"></script>
  <!-- Core plugin JavaScript-->
  <script src="content/js/jquery.easing.min.js"></script>
</body>
</html>
