<!--@uthor: victor urbina 1150962-->                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               <!DOCTYPE html>

<!--Aqui coloco el header, OJO con include-->
<jsp:include page="../Vistas/header_us.jsp"/>

<!--Contenido-->
<!--Aqui empieza el area de trabajo, que cambiara dependiendo de las funcionalidades
a la cual se quiera tener acceso, segun el boton, o accion ejecutada tras un clic, y 
en relacion al tipo de usuario, esta seccion sera dinamica, el resto de vistas estaran
dentro de un div-->

<h1 align="center">Generar Consultas y Reportes</h1>

<div class="ufps-tab-container" id="tabs">
    
    <ul class="ufps-tabs">
        <li><a class="ufps-tab-links" onclick="openTab(event, 'tab1', 'tabs')">Generales</a></li>
        <li><a class="ufps-tab-links" onclick="openTab(event, 'tab2', 'tabs')" data-toggle="tab">Especificos</a></li>
    </ul>

    <div id="tab1" class="ufps-tab-content">
    
        <form  align="center">
            
           <div class="ufps-col-mobile-6 ufps-col-tablet-6 ufps-col-netbook-4" align="center">
                <input style="width:300px" align="center" class="ufps-btn" id="todos" name="todos" value="Consultar Todos Los Docentes" type="submit1"><br>
                <input style="width:300px" align="center" class="ufps-btn" id="docencia" name="docencia" value="Consultar Docentes en Docencia" type="submit2"><br>
            </div>
            
            <div class="ufps-col-mobile-6 ufps-col-tablet-6 ufps-col-netbook-4" align="center">
                <input style="width:300px" align="center" class="ufps-btn" id="investigacion" name="investigacion" value="Consultar Docentes en Investigacion" type="submit3"><br>
                <input style="width:300px" align="center" class="ufps-btn" id="extension" name="extension" value="Consultar Docentes en Extensi�n" type="submit4"><br>
            </div>
            
            <div class="ufps-col-mobile-6 ufps-col-tablet-6 ufps-col-netbook-4" align="center">
                <input style="width:300px" align="center" class="ufps-btn" id="administracion" name="administracion" value="Consultar Docentes en Administraci�n" type="submit5"><br>
                <a href="../Vistas/Servicios.jsp">Atr�s</a>  
            </div>
            <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>  <br><br><br><br><br><br><br>
            <!--Aqui coloco los n profesores, listados con checkbox los cuales seran habilitados
            por el director para ingresar informacion al sistema para periodo definido, se crea
            dinamicamente trayendo el codigo y el nombre del profesor-->
            
        </form>
        
    </div>

    <div id="tab2" class="ufps-tab-content">
    
        <form align="center">
            
            <div class="ufps-col-mobile-6 ufps-col-tablet-6 ufps-col-netbook-4" align="center">
                <input style="width:300px" align="center" class="ufps-btn" id="mayor" name="mayor" value="Docente con Mayor Carga Acad�mica" type="submit1"><br>
                <input style="width:300px" align="center" class="ufps-btn" id="menor" name="menor" value="Docente con Menor Carga Acad�mica" type="submit2"><br>
                <input style="width:300px" align="center" class="ufps-btn" id="cantidad" name="cantidad" value="Cantidad Docentes por Actividad" type="submit3"><br>
            </div>
            
            <div class="ufps-col-mobile-6 ufps-col-tablet-6 ufps-col-netbook-4" align="center">
                <input style="width:300px" align="center" class="ufps-btn" id="completo" name="completo" value="Docentes Tiempo completo" type="submit4"><br>
                <input style="width:300px" align="center" class="ufps-btn" id="medio" name="medio" value="Docentes Medio Tiempo" type="submit5"><br>
                <input style="width:300px" align="center" class="ufps-btn" id="catedra" name="catedra" value="Docentes catedra" type="submit6"><br> 
            </div>
            
            <div class="ufps-col-mobile-6 ufps-col-tablet-6 ufps-col-netbook-4" align="center">
                <input style="width:300px" align="center" class="ufps-btn" id="comparativo" name="comparativo" value="Comparativo por Fechas" type="submit7"><br>
                <a href="../Vistas/Servicios.jsp">Atr�s</a>  
            </div>
            <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
            <!--Aqui coloco los n profesores, listados con checkbox los cuales seran habilitados
            por el director para ingresar informacion al sistema para periodo definido, se crea
        </form><!--Aqui se termina el div del area de trabajo--> 
        
    </div>
</div> 

<!--Aqui empieza el footer, el pie de pagina de la aplicacion, nombre de la
universidad, programa, materia y desarrolladores-->

<!--Aqui coloco el footer, OJO con include-->
<jsp:include page="../../plantilla/footer.jsp"/>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    <!DOCTYPE html>
                                                                                                                                                                                                                                                                                                              