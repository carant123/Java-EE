<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="s"  uri="/struts-tags" %>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Lista de Reservas</title>
    </head>
    <body>
        <table border="0">
            <tr>
                <td colspan="2" > <jsp:include page="cabecera.jsp" /></td>
            </tr>
            <tr>
                <td ><jsp:include page="menu.jsp" /></td>
                <td class="control" >
                    <table border="0">
                        <tr>
                            <td colspan="3" class="titulo" >
                                <img src="imagenesC/otro_carrito.gif" width="218" height="31" alt="Carrito de Compras - Caribean Tours"/>
                            </td>
                        </tr>
                        <tr class="grilla_cabecera"   >
                            <td><s:text name="key.reserva.nombre" /></td>
                            <td><s:text name="key.reserva.destino" /></td>
                            <td><s:text name="key.reserva.pref1" /></td>
                            <td><s:text name="key.reserva.pref2" /></td>
                            <td><s:text name="key.reserva.pref3" /></td>
                            <td align="center" ><s:text name="key.reserva.ncupos" /></td>
                        </tr>
  					 
                   <!--  <c:if test="${requestScope.reservas!=null}"   >
				
					<c:forEach   
						items="${requestScope.reservas}"  
						var="lares"  >
						
						  <tr class="grilla_campo" >
						    <td> ${lares.nombre} </td>
						    <td> ${lares.destino}  </td>
						    <td> ${lares.pref1}  </td>
						    <td> ${lares.pref2}  </td>
						    <td> ${lares.pref3}  </td>
						    <td> ${lares.nrocupos}  </td>
						  </tr>
					
					
					</c:forEach>
					</c:if> -->
					<c:if test="${sessionScope.b_reservas!=null}"   >
				
					<c:forEach   
						items="${sessionScope.b_reservas}"  
						var="lares"  >
						
						  <tr class="grilla_campo" >
						    <td> ${lares.nombre} </td>
						    <td> ${lares.destino}  </td>
						    <td> ${lares.pref1}  </td>
						    <td> ${lares.pref2}  </td>
						    <td> ${lares.pref3}  </td>
						    <td> ${lares.nrocupos}  </td>
						  </tr>
					
					
					</c:forEach>
					</c:if>
                        <tr class="control"  >
                            <td align="right" colspan="3"  >
                            	
                                <a href="comprarCarrito.jsp" ><img border="0"  src="imagenesC/comprar.jpg" width="112" height="35" alt="Confirmar Compras"/>
                                </a>
                            </td>
                        </tr>
                    </table>
                    <table border="0">
                    </table>
                </td>
            </tr>
            <tr>
                <!--  aqui va el pie -->
                <td colspan="2" >
                    <jsp:include page="pie.jsp" />
                </td>
            </tr>
        </table>
    </body>
</html>