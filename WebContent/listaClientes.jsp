<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib   prefix="c"  
		uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="s"  uri="/struts-tags" %>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Datos en Base de Datos</title>
</head>
<body>
	<table>
		<tr>
			<td colspan="2" align="center"  ><jsp:include page="cabecera.jsp" /></td>
		</tr>

		<tr>
			<td ><jsp:include page="menu.jsp"   /></td>
			<td class="control" >

				<table>
				  <tr class="grilla_cabecera" >
				    <th><s:text name="key.cliente.nombre" /></th>
				    <th><s:text name="key.cliente.sueldo" /></th>
				    <th><s:text name="key.cliente.fechanac" /></th>
				    <th><s:text name="key.cliente.sueldo" /></th>
				    <th><s:text name="key.cliente.usuario" /></th>
				  </tr>

				  <c:if test="${requestScope.clientes!=null}"   >
				
					<c:forEach   
						items="${requestScope.clientes}"  
						var="elcli"  >
						
						  <tr class="grilla_campo" >
						    <td> ${elcli.nombre} </td>
						    <td> ${elcli.sueldo}  </td>
						    <td> ${elcli.fecnac }  </td>
						    <td> ${elcli.sexo}  </td>
						    <td> ${elcli.usuario}  </td>
						  </tr>
					
					
					</c:forEach>
					
					<tr  class="control" >
						<td colspan="5" align="right"  >
							<a href="nuevoCliente.jsp" > 
									Nuevo Cliente   
							</a>
						</td>
					
					</tr>
					
				
				</c:if>
							  
				</table>

			</td>
			
			
		</tr>


		<tr>
			<!--  aqui va el pie -->
			<td colspan="2" align="center" >   
			 		<jsp:include page="pie.jsp"   />	
			</td>
		</tr>



		
	</table>
	

</body>
</html>