<%@taglib prefix="s" uri="/struts-tags"%>
<div class="sidebar-collapse">
    <ul class="nav" id="main-menu">
        <li>
            <s:url action="home" id="goHome"/>
            <s:a href="%{goHome}"> <i class="fa fa-home"></i> <s:text name="enlace.main.inicio"/></s:a>
        </li>
        <li>
            <s:url action="listarCliente" id="listCliente"/>
            <s:a href="%{listCliente}"> <i class="fa fa-list"></i> <s:text name="enlace.cliente.lista"/></s:a>
        </li>
    </ul>
</div>

 
        