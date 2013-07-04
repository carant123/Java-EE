<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  
<%@ taglib prefix="s"  uri="/struts-tags" %>
<%@ taglib prefix="sj" uri="/struts-jquery-tags"%>

    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

  
<html>
<head>
 <sj:head jqueryui="true"/>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Nuevo Cliente</title>
<link href="estilos/facilito.css" rel="stylesheet" type="text/css">

</head>

<body>

	<table>
		<tr>
			<td colspan="2" align="center"  ><jsp:include page="cabecera.jsp"   /></td>
		</tr>

		<tr>
			<td><jsp:include page="menu.jsp"   /></td>
			<td class="control" >
				<s:form action="registraCliente"  
						method="post"  enctype="multipart/form-data"  >
				<table>
					<tr class="titulo" >
						<td colspan="2" align="center" > Registro de  Clientes </td>
					</tr>
					<tr class="control" >
						<td> <s:text name="key.cliente.nombre" />  </td>
						<td> <s:textfield name="cliente.nombre" />  </td>
					</tr>
					<tr class="control" >
						<td> <s:text name="key.cliente.sueldo" />   </td>
						<td> <s:textfield  name="cliente.sueldo" />     </td>
					</tr>
					<tr class="control" >
						<td> Usuario:  </td>
						<td>   <s:textfield  name="cliente.usuario" /> </td>
					</tr>
					<tr class="control" >
						<td> Clave:  </td>
						<td> <s:textfield  name="cliente.clave" /> </td>
					</tr>
					
					<tr class="control"  >
						<td> <s:text name="key.cliente.sexo" /> </td>						 
						<td> <s:select name="cliente.sexo" 
			               	 		 list="#application.l_genero" 
			               			 listKey="codigo" 
			               			 listValue="descripcion"   />   						
							</td>						
					</tr>
					
					<tr class="control"  >
						<td> <s:text name="key.cliente.fechanac" />  </td>
						<td>  
						<sj:datepicker 
							name="cliente.fecnac" 
							changeYear="true"
							changeMonth="true"
							yearRange="-50:+50" 
							displayFormat="dd/mm/yy"   />
						</td>
						 
					</tr>
					
					<tr class="control" >
						<td> <s:text name="key.cliente.foto"/>  </td>
						<td><s:file name="cliente.foto" /> </td>
					</tr>
					
					<tr class="control" >
						<td  align="right"  > 
							<input 
								type="submit" 
								name="boton01" 
								value="Registrar" > 
						</td>
					</tr>
				</table>
				</s:form>
			</td>
		</tr>

		<tr>
			<td colspan="2" align="center" ><jsp:include page="pie.jsp"   /></td>
		</tr>

	</table>

</body>
</html>