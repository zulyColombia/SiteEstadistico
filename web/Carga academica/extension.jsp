
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 <!DOCTYPE html>
<!--@uthor: victor urbina 1150962-->

<!--Aqui coloco el header, OJO con include-->
<jsp:include page="diseno.jsp"/>
<jsp:include page="../plantilla/header.jsp"/>
<%@page import="CargaAcademica.Fachada.Fachada" %>
<%@page import="CargaAcademica.DTO.carga_extensionDTO" %>
<%@page import="java.util.ArrayList"%>
<% 
    Fachada f=new Fachada();
    if(request.getSession().getAttribute("respuesta_entidad")!=null){


%>
    

  <!--  <script type="text/javascript">
    alert("<%=request.getSession().getAttribute("respuesta_entidad")%>");
</script> -->
<%}
request.getSession().setAttribute("respuesta_entidad", null);
%>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.5/css/bootstrap.min.css" >
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<!--Contenido-->
<!--Aqui empieza el area de trabajo, que cambiara dependiendo de las funcionalidades
a la cual se quiera tener acceso, segun el boton, o accion ejecutada tras un clic, y 
en relacion al tipo de usuario, esta seccion sera dinamica, el resto de vistas estaran
dentro de un div-->
<div class="ufps-container-fluid">
<div class="ufps_row">
    <form  action="procesar/extension_pro.jsp" method="post">

    <!--AQUI VA TODO EL CODIGO DINAMICO QUE CAMBIA SEGUN LAS INFORMACION, FUNCION Y USUARIO-->
    <h1 align="center">Registro de Actividades de Extensi�n</h1>

   <!-- <div class="ufps-col-mobile-6 ufps-col-tablet-6 ufps-col-netbook-4">
    <label>C�digo</label>
    <input class="ufps-input ufps-red" type="number" min="0" max="7777777" name="codigo" id="codigo" required="required">
    </div> -->
    
    <div class="ufps-col-mobile-6 ufps-col-tablet-6 ufps-col-netbook-4">
    <label>Actividad</label>
    <input class="ufps-input ufps-red" type="text" placeholder="Ej:actividad 1" name="actividad" id="actividad" required="required">
    </div>
    
    <div class="ufps-col-mobile-6 ufps-col-tablet-6 ufps-col-netbook-4">
    <label>Responsabilidad</label>
    <select class="ufps-input ufps-red" id="responsabilidad" name="responsabilidad">
       <option value="directorGrupo">Director de Grupo</option>
       <option value="directorProyecto">Director de Proyecto</option>
       <option value="directorSemillero">Director de Semillero</option>
       <option value="jovenInvestigador">Joven Investigador</option>
       <option value="participante">Participante</option>
    </select>
    </div>
    
    <div class="ufps-col-mobile-6 ufps-col-tablet-6 ufps-col-netbook-4">
    <label>Unidad</label>
    <input class="ufps-input ufps-red" type="text" placeholder="Ej:facultad/departamento" name="unidadInvestigativa" id="unidadInvestigativa" required="required">
    </div>

    <div class="ufps-col-mobile-6 ufps-col-tablet-6 ufps-col-netbook-4">    
    <label>Programa o Beneficiario</label>
    <input class="ufps-input ufps-red" type="text" placeholder="Ej:fundacion..." name="beneficiario" id="beneficiario" required="required">
    </div>
    
    <div class="ufps-col-mobile-6 ufps-col-tablet-6 ufps-col-netbook-4">
    <label>Horas Semanal Ejecuci�n:</label>
    <input  class="ufps-input ufps-red horasE" type="number" maxlength="2" min="0" max="50" name="ejecucion" id="ejecucion" required="required">
    </div>
    
    <div class="ufps-col-mobile-6 ufps-col-tablet-6 ufps-col-netbook-4">
    <label>Horas Semanal Programaci�n:</label>
    <input  class="ufps-input ufps-red horasE" type="number" maxlength="2" min="0" max="50" name="programacion" id="programacion" required="required">
    </div>
    
    <div class="ufps-col-mobile-6 ufps-col-tablet-6 ufps-col-netbook-4">
    <label>Horas Semestre</label>
    <input class="ufps-input ufps-red" type="number" min="0" max="20" name="horaSemestre" id="horaSemestre" required disabled>
    </div>
    
    <div class="ufps-col-mobile-6 ufps-col-tablet-6 ufps-col-netbook-4" align="center">
    <input class="ufps-btn" type="submit" id="registrar" name="registrar" value="guardar">
    <a href="index.jsp">Atr�s</a>
    </div>
    
</form><!--Aqui se termina el div del area de trabajo-->
</div>
</div>

<% 
            ArrayList <carga_extensionDTO> lista= f.obtenerExtension();  
            if(!lista.isEmpty()){
                System.out.println("lista llena");
            }
%>

<br>
<table class="table table-bordered  table-striped table-bordered container-fluid">
    <thead> <tr align="center"><th>Actividad</th><th>Responsabilidad</th><th>Unidad</th><th>Programa</th><th>Horas ejecuci�n</th>
                <th>Horas programaci�n</th><th>Total semestre</th></tr></thead>
    <tbody>
 <%   
       int suma=0;
       for(carga_extensionDTO x:lista){
           suma+=x.getHoras_ejecu()+x.getHoras_progra();
    %> 
    <tr>
        <td><%= x.getNombre() %></td>
        <td><%= x.getResponsabilidad() %></td>
        <td><%= x.getUnidad()%></td>
        <td><%= x.getPrograma()%></td>
        <td><%= x.getHoras_ejecu()%></td>
        <td><%= x.getHoras_progra()%></td>
        <td><%= x.getHoras_ejecu()+x.getHoras_progra() %></td>
    </tr>
 <%
     }
 %>
    <tr>
        
        <td class="table-danger " colspan="6">Sub-total</td>
        <td class="table-danger"><%= suma %></td>
    </tr>
    </tbody>
</table>

<!--Aqui empieza el footer, el pie de pagina de la aplicacion, nombre de la
universidad, programa, materia y desarrolladores-->

<!--Aqui coloco el footer, OJO con include-->
<script src="js/general.js"></script>
<jsp:include page="../plantilla/footer.jsp"/>                                                                                                                                                                                                                                                                                              