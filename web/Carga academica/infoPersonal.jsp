<%@page import="CargaAcademica.DAO.DAOCargaAcademica"%>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                <!DOCTYPE html>
<%--/**@author Seminario Integrador 3: Ing Pilar Rojas, Estud: Victor Urbina 1150962 & Jesus Rojas 1150833 20/11/2016*/--%>

       <!--Aqui coloco el header, OJO con include-->
       <jsp:include page="diseno.jsp"/>
       <jsp:include page="../plantilla/header.jsp"/>
        
        
        <!--AQUI VA TODO EL CODIGO DINAMICO QUE CAMBIA SEGUN LAS INFORMACION, FUNCION Y USUARIO-->

        <!--Este agrega el div de info personal-->
        <div class="ufps-container">
        <div class="ufps_row">
        <!--Aqui ingreso toda la informacion personal del docente-->
         <%
        if (request.getSession().getAttribute("respuesta_infoPersonal") != null) {
        %>
        <div class="ufps-alert-green" style="height:30px;">
        <span class="ufps-close-alert-btn">x</span><%=request.getSession().getAttribute("respuesta_infoPersonal")%>
        </div>
        <%}
            request.getSession().setAttribute("respuesta_infoPersonal", null);
        %>
        
        <%DAOCargaAcademica c=new DAOCargaAcademica();%>
        <%String profes[]=c.consultarinfoDocente("1").split(",");%>
        <%String cedula="";String nombres="";String apellidos="";String institucional="";String personal="";
          String pregrado="";String celular="";String anos="";String nace="";String reside="";
        for(int i=0;i<profes.length;i++){
            String ing[]=profes[i].split("/");
            cedula=ing[0];
            nombres=ing[1];
            apellidos=ing[2];
            institucional=ing[3];
            personal=ing[4];
            pregrado=ing[5];
            celular=ing[6];
            anos=ing[7];
            nace=ing[8];
            reside=ing[9];
        }
        %>    
        <form align="center" action="infoPersonal_pro.jsp">
          
            <h1 align="center">Actualizar Informaci�n Personal del Docente</h1>

            <!--Aqui en esta tabla boy a ubicar los campos de la informacion requerida en dos columnas y una fiila
            con la mitad en cada parte, esto con el objetivo de distribuir el ancho y largo sobre el area de 
            trabajo.-->
                
                <!--preguntas del 1 al 8: izquierda-->
                <!--respuestas del 9 al 15: derecha-->
                <div class="ufps-col-mobile-6 ufps-col-tablet-6 ufps-col-netbook-4">
                    1. C�digo:
                    <input class="ufps-input ufps-red" type="number" id="codigo" name="codigo" value="1" readonly="true">
                    <br><br>  
                    2. C�dula:
                    <input class="ufps-input ufps-red" type="number" id="cedula" name="cedula" value="<%=cedula%>" min="0" max="9999999999" required="required">
                    <br><br>
                    3. Nombres:
                    <input class="ufps-input ufps-red" type="text" id="nombres" name="nombres" value="<%=nombres%>" required="required">
                    <br><br>
                    4. Apellidos:
                    <input class="ufps-input ufps-red" type="text" id="apellidos" name="apellidos" value="<%=apellidos%>" required="required">  
                    <br><br>
                    5. Estado: 
                        <select class="ufps-input ufps-red" id="estado" name="estado">
                            <option value="1">activo</option>
                            <option value="0">inactivo</option>
                        </select>
                </div>
                
                <div class="ufps-col-mobile-6 ufps-col-tablet-6 ufps-col-netbook-4">
                   
                    6. Nivel de Estudio:
                        <select class="ufps-input ufps-red" id="nivelEstudio" name="nivelEstudio">
                            <option value="especialidad">Especialidad</option>
                            <option value="maestria">Maestr�a</option>
                            <option value="doctorado">Doctorado</option>
                        </select>
                    <br><br>
                    7. Categor�a:
                        <select class="ufps-input ufps-red" id="categoria" name="categoria">
                            <option value="instructor">Instructor</option>
                            <option value="auxiliar">Auxiliar</option>
                            <option value="asistente">Asistente</option>
                            <option value="asociado">Asociado</option>
                            <option value="titular">Titular</option>
                        </select>
                    <br><br>
                    8. Tipo de Vinculaci�n:
                        <select class="ufps-input ufps-red" id="tipoVinculacion" name="tipoVinculacion">
                            <option value="tiempo completo">Tiempo Completo</option>
                            <option value="medio tiempo">Medio Tiempo</option>
                            <option value="catedra">Catedra</option>
                        </select> 
                    <br><br>
                    9. T�tulo Pregrado:
                    <input class="ufps-input ufps-red" type="text" id="tituloPregrado" name="tituloPregrado" value="<%=pregrado%>" required="required">
                    <br><br>  
                    10. Celular:
                    <input class="ufps-input ufps-red" type="number" id="celular" name="celular" value="<%=celular%>" min="0" max="9999999999" required="required">
                    
                </div>
                <div class="ufps-col-mobile-6 ufps-col-tablet-6 ufps-col-netbook-4">
                    
                    11. Correo Institucional: 
                    <input class="ufps-input ufps-red" type="email" id="correoInstitucional" name="correoInstitucional" value="<%=institucional%>" required="required">
                    <br><br> 
                    12. Correo Personal:
                    <input class="ufps-input ufps-red" type="email" id="correoPersonal" name="correoPersonal" value="<%=personal%>" required="required">
                    <br><br> 
                    13. A�os de Experiencia:
                    <input class="ufps-input ufps-red" type="number" id="anoExperiencia" value="<%=anos%>" name="anoExperiencia" min="0" max="99" required="required">
                    <br><br> 
                    14. Fecha Nacimiento:
                    <input class="ufps-input ufps-red" type="date" id="fechaNacimiento" name="fechaNacimiento" value="<%=nace%>" required="required">
                    <br><br> 
                    15.Direcci�n Residencia:
                    <input class="ufps-input ufps-red" type="text" id="direccionResidencia" name="direccionResidencia" value="<%=reside%>" required="required">
                </div>
                <br>    
            <p align="center">
                <input class="ufps-btn" type="submit" value="Actualizar">
                <a href="index.jsp">Atr�s</a>
            </p>
    
        </form><!--Aqui se termina el div del area de trabajo-->
        </div>
        </div>
        <!--Aqui empieza el footer, el pie de pagina de la aplicacion, nombre de la
        universidad, programa, materia y desarrolladores-->
        
        <!--Aqui coloco el footer, OJO con include-->
        <jsp:include page="../plantilla/footer.jsp"/>  
                                                                                                                                                                                                                                                                                                                 