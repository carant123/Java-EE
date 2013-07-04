<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<%@ taglib prefix="s"  uri="/struts-tags" %>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
        <title>Logueo de Usuarios</title>
        <link href="estilos/facilito.css" rel="stylesheet" type="text/css" />
    </head>
    <body>
        <s:form action="nuevologueo"  method="post"  > 
            <table border="0">
                <tr>
                    <td><img alt="" src="imagenes/logo_tiny.png"/></td>
                </tr>
                <tr>
                    <td><font color="orange" size="5"> Logueo de Usuarios </font></td>
                </tr>
                <tr>
                    <td colspan="2" class="error_general"  >
                    </td>
                </tr>
                <tr class="etiqueta" >
                    <td>Usuario:</td>
                     <td> <s:textfield  name="cliente.usuario"  />  </td>
                    
                </tr>
                <tr>
                    <td>Clave:</td>
                    <td> <s:password name="cliente.clave"  />  </td>

                </tr>

                <tr>
                    <td>
                        <input type="submit" value="Ingresar" />
                    </td>
                </tr>
      
               
                <tr>
                    <td class="error_general" >  ${requestScope.mensaje}  </td>
                </tr>
            </table>
       </s:form>
    </body>
</html>