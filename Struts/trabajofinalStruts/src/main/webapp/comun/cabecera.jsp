<%@taglib prefix="s" uri="/struts-tags"%>       

<div class="navbar-header"> 
    <a class="navbar-brand" href="#">
        <img src="content/img/logo.png" />
    </a>                          
</div>
<span class="logout-spn" > 
    <strong><s:text name="titulo.bienvenida"/></strong>    
    <s:url action="logout" id="salir"/>
    <s:a href="%{salir}"> <s:text name="enlace.logout"/> </s:a>  
</span>