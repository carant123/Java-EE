<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="s"  uri="/struts-tags" %>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
        <title>Bienvenido</title>
        <link href="estilos/facilito.css" rel="stylesheet" type="text/css" />
    </head>
    <body>
        <table border="0">
            <tr>
                <td colspan="2" ><jsp:include page="cabecera.jsp"  /></td>
            </tr>
            <tr>
                <td ><jsp:include page="menu.jsp"  /></td>
                <td>
                    <table border="0">
                        <tr>
                            <td colspan="2" class="grilla_titulo" >
                                Bienvenido estimado usuario, sus datos son :
                            </td>
                        </tr>
                        <tr>
                            <td class="grilla_titulo"  >Información del Request: </td>
                        </tr>
                        <tr>
                            <td class="control" ><s:text name="key.cliente.usuario"/> </td>
                            <td class="control" >${b_usuario.usuario}    </td>
                        </tr>
                        <tr>
                            <td class="control" ><s:text name="key.cliente.clave"/></td>
                            <td class="control" >${b_usuario.clave} </td>
                        </tr>
                        <tr>
                            <td class="grilla_titulo"  >Información de la Sesión web: </td>
                        </tr>
                        <tr>
                            <td class="control" ><s:text name="key.cliente.nombre"/></td>
                            <td class="control" > ${b_usuario.nombre}  </td>
                        </tr>
                        
                        <tr>
                            <td class="control" ><s:text name="key.cliente.sueldo"/></td>
                            <td class="control" >${b_usuario.sueldo}   </td>
                        </tr>
                        <tr>
                            <td class="control" ><s:text name="key.cliente.fechanac"/></td>
                            <td class="control" >${b_usuario.fecnac}</td>
                        </tr>
                        <tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td colspan="2" >
                    <jsp:include page="pie.jsp"  />
                </td>
            </tr>
        </table>
    </body>
</html>