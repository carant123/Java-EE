<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="s"  uri="/struts-tags" %>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Datos de Compra</title>
</head>
 <body>
        <table border="0">
            <tr>
                <td colspan="2" > <jsp:include page="cabecera.jsp" /></td>
            </tr>
            <tr>
                <td ><jsp:include page="menu.jsp"  /></td>
                <td class="control" >
                    <s:form action="compraCarrito"  
						method="post"  enctype="multipart/form-data"  >
                        <table border="0">
                            <tr>
                                <td>
                                    <img src="imagenesC/solovacaciones.gif" width="170" height="50"
                                         alt="De vacaciones con Caribean Tour SAC"/>
                                <td align="right">
                                    <img src="imagenesC/ver_carrito.gif" width="90" height="30"
                                         alt="ver_carrito"/>
                                </td>
                            </tr>
                            
                             <tr>
                                <td> <s:text name="key.carrito.usuario" /> </td> 
								<td> <s:textfield name="carrito.usuario" /> </td>          
                           </tr>
                           <tr>
                                <td> <s:text name="key.carrito.direccion" /> </td> 
								<td> <s:textfield name="carrito.direccion" /> </td>          
                           </tr>
                           
                           <tr>
                                <td> <s:text name="key.carrito.telefono" /> </td> 
								<td> <s:textfield name="carrito.telefono" /> </td>          
                           </tr>
                           
                           <tr class="control"  >
								<td> <s:text name="key.carrito.modo" /> </td>
								<td>
									<s:select name="carrito.modo" 
			               			 list="#application.l_modo" 
			                		 listKey="modo" 
			               			 listValue="descripcion"/>   
								</td>
							</tr>
                           
                            <tr>
                                <td align="right"  colspan="2" >
                                    <input type="submit" value="Comprar" >
                                </td>
                            </tr>

                        </table>
                    </s:form>
                </td>
            </tr>
            <tr>
                <td colspan="2" >
                    <jsp:include page="pie.jsp" />
                </td>
            </tr>
        </table>
    </body>
</html>