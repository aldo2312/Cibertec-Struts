<%-- 
    Document   : plantilla01
    Created on : 2/05/2012, 10:11:27 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>   
<%@taglib prefix="s" uri="/struts-tags"%>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Trabajo Final Java Advanced I</title>
        
        <!-- BOOTSTRAP STYLES-->
        <link href="content/css/bootstrap.css" rel="stylesheet" type="text/css"/>
         <!-- FONTAWESOME STYLES-->
        <link href="content/css/font-awesome.css" rel="stylesheet" type="text/css"/>
            <!-- CUSTOM STYLES-->
        <link href="content/css/custom.css" rel="stylesheet" type="text/css"/>
         <!-- GOOGLE FONTS-->
       <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
    </head>
    <body> 
        <div id="wrapper">
         <div class="navbar navbar-inverse navbar-fixed-top">
            <div class="adjust-nav">
                 <!-- CABECERA -->
                <tiles:insertAttribute name="cabecera" />                
            </div>
        </div>
        <!-- /. NAV TOP  -->
        <nav class="navbar-default navbar-side" role="navigation">
            <!-- MENU -->
            <tiles:insertAttribute name="menu" />
        </nav>
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper" >
            <div id="page-inner" >
                <div class="row">
                    <div class="col-md-12" style="color: #696969;">
                     
                    <!-- CUERPO -->
                    <tiles:insertAttribute name="cuerpo" />
                        
                    </div>
                </div>              
                 <!-- /. ROW  -->
                <hr />              
                 <!-- /. ROW  -->           
            </div>
             <!-- /. PAGE INNER  -->
        </div>
        <!-- /. PAGE WRAPPER  -->
        </div>
        <div class="footer">  
            <div class="row">
                 <!-- PIE -->
                <tiles:insertAttribute name="pie" />                
            </div>
        </div>     
    </body>
</html>
