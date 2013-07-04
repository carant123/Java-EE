<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib   prefix="c"  
		uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="s"  uri="/struts-tags" %>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>
<title>Insert title here</title>
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
						Muchas Gracias por reservar en Caribean Tours
						</td>
                        <td class="control" >
                            <a href="reservas.jsp" >
                            <img border="0" src="imagenesC/agregar_al_carrito.gif" width="35" height="26" alt="Puede hacer una nueva reserva"/>
                            </a>
                        </td>
					</tr>
					
					
					<tr>
						<td colspan="3" class="grilla_titulo" >
						Datos de la Compra:
						</td>
					</tr>
					<tr>
						<td><s:text name="key.cliente.nombre" /></td>
						<td>${sessionScope.b_usuario.nombre}</td>
					</tr>
					<tr>
						<td><s:text name="key.carrito.direccion" /></td>
						<td>${sessionScope.b_carrito.direccion}</td>
					</tr>
					<tr>
						<td><s:text name="key.carrito.telefono" /></td>
						<td>${sessionScope.b_carrito.telefono}</td>
					</tr>
					<tr>
						<td><s:text name="key.carrito.modo" /></td>
						<td>${sessionScope.b_carrito.modo}</td>
					</tr>
					
					
					<tr>
						<td colspan="3" class="grilla_titulo" >
						Datos de las Reservas:
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
					
					
				</table>
			</td>
		</tr>
		<tr>
			<td colspan="2" ><jsp:include page="pie.jsp"  /></td>
		</tr>
	</table>
</body>
</html>