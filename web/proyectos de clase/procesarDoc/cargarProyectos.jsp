<%-- 
    Document   : cargarProyectos
    Created on : 7/11/2016, 04:21:03 PM
    Author     : tuto2
--%>

<%@page import="academico.DTO.ProyectoDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="academico.Facade.Facade"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% int cod_grp = Integer.parseInt(request.getParameter("cod_grupo"));
System.out.println("godkc "+cod_grp);
    Facade fachada = new Facade();
    ArrayList<ProyectoDTO> lista = fachada.obtenerProyectos(cod_grp);

%>
<table class="ufps-table">
    <thead>
        <tr>
            <th data-field="codigo">Codigo</th>
            <th  data-field="nombre">Nombre</th>
            <th  data-field="nom_equipo">Nombre proyecto</th>
            <th  data-field="ver_proyecto">Ver proyecto</th>

        </tr>
    </thead>
    <% for(ProyectoDTO dto:lista){
            System.out.println("godkc ");
    %>
    <tr>
        <td  data-field="codigo"><%=dto.getProyecto_id()%></td>
        <td data-field="nombre"><%=dto.getProyecto_name()%></td>
        <td  data-field="nom_equipo"><%=dto.getProyecto_id()%></td>
        <td  data-field="ver_proyecto">
            <button type="submit" class="ufps-btn">Ver proyecto</button>
        </td>
    </tr>
    <%}
    %>
</table>
