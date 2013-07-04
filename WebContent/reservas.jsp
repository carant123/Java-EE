<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="s"  uri="/struts-tags" %>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
         
         
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insert title here</title>
    </head>
    <body>
        <table border="0">
            <tr>
                <td colspan="2" > <jsp:include page="cabecera.jsp" /></td>
            </tr>
            <tr>
                <td ><jsp:include page="menu.jsp"  /></td>
                <td class="control" >
                    <s:form action="registraCarrito"  
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
                                <td> <s:text name="key.reserva.usuario" /> </td> 
								<td> <s:textfield name="reserva.usuario"/>${sessionScope.b_cliente.usuario }</td>          
                           </tr>
                            
                           <tr>
                                <td> <s:text name="key.reserva.nombre" /> </td> 
								<td> <s:textfield name="reserva.nombre" /> </td>          
                           </tr>
                           
                           <tr class="control"  >
								<td> <s:text name="key.reserva.destino" /> </td>
								<td>
									<s:select name="reserva.destino" 
			               			 list="#application.l_destino" 
			                		 listKey="destino" 
			               			 listValue="descripcion"/>   
								</td>
							</tr>
							
                            <tr>
                                <td><s:text name="key.reserva.pref" /> </td>
                                <td>
                                    <s:checkbox name="reserva.pref1" value="Si"><s:text name="key.reserva.pref1" /></s:checkbox>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>
           							<s:checkbox name="reserva.pref2" value="Si"><s:text name="key.reserva.pref2" /></s:checkbox>
                                </td>
                            </tr>
                            <tr>
                                <td></td>
                                <td>
           							<s:checkbox name="reserva.pref3" value="Si"><s:text name="key.reserva.pref3" /></s:checkbox>
                                </td>
                            </tr>
                            <tr>
                                <td><s:text name="key.reserva.ncupos" /> </td>
                                <td><s:textfield name="reserva.nrocupos" /> </td>
                            </tr>
                            <tr>
                                <td align="right"  colspan="2" >
                                <!--<s:param name="reserva.usuario">${sessionScope.b_usuario.usuario}</s:param>-->
                                    <input type="submit" value="Agregar al Carrito" >
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