  
<!--@uthor: victor urbina 1150962-->                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               <!DOCTYPE html>

<!--Aqui coloco el header, OJO con include-->
<jsp:include page="../Vistas/header_us.jsp"/>

<!--Contenido-->
<!--Aqui empieza el area de trabajo, que cambiara dependiendo de las funcionalidades
a la cual se quiera tener acceso, segun el boton, o accion ejecutada tras un clic, y 
en relacion al tipo de usuario, esta seccion sera dinamica, el resto de vistas estaran
dentro de un div-->

<h1 align="center">Administrar el Sistema</h1>

<div class="ufps-tab-container" id="tabs">
    
    <ul class="ufps-tabs">
        <li><a class="ufps-tab-links" onclick="openTab(event, 'tab1', 'tabs')">Habilitar el Sistema</a></li>
        <li><a class="ufps-tab-links" onclick="openTab(event, 'tab2', 'tabs')" data-toggle="tab">Dar Prorroga a Docente</a></li>
    </ul>

    <div id="tab1" class="ufps-tab-content">
    
        <form  align="center">
            
            <div class="ufps-col-mobile-6 ufps-col-tablet-6 ufps-col-netbook-6">
                <label>Semestre:</label>
                <select class="ufps-input ufps-red" id="semestre" name="semestre">
                    <option value="1">1</option>
                    <option value="2">1</option>
                </select>
                
                <label>Fecha de Inicio:</label>
                <input class="ufps-input ufps-red" type="date" name="inicio" id="inicio" required="required">
                
                <label>Fecha de Fin:</label>
                <input class="ufps-input ufps-red" type="date" name="fin" id="fin" required="required">
            </div>
            
           <div class="ufps-col-mobile-6 ufps-col-tablet-6 ufps-col-netbook-6" align="left">
                <label> Listado de Profesores a habilitar:</label><br>
                <input type="checkbox" name="codigo" value="codigo"><label class="ufps-input ufps-red">1-Oscar Gallardo</label><br>
                <input type="checkbox" name="codigo" value="codigo"><label class="ufps-input ufps-red">2-Pilar Rodriguez</label><br> 
                <input type="checkbox" name="codigo" value="codigo"><label class="ufps-input ufps-red">3-Maria Rojas</label><br>
                <input type="checkbox" name="num_empleados" value="codigo"><label class="ufps-input ufps-red">4-Nelson Beltran</label><br>
                <input type="checkbox" name="codigo" value="codigo"><label class="ufps-input ufps-red">5-Matias Herrera</label><br>
                <input type="checkbox" name="codigo" value="codigo"><label class="ufps-input ufps-red">6-Fredy Vera</label><br> 
                <input type="checkbox" name="codigo" value="codigo"><label class="ufps-input ufps-red">7-Milton Vera</label><br>
                <input type="checkbox" name="codigo" value="codigo"><label class="ufps-input ufps-red">8-Carlos Pardo</label><br>
                <input type="checkbox" name="codigo" value="codigo"><label class="ufps-input ufps-red">9-Rosana Diaz</label><br>
                <input type="checkbox" name="codigo" value="codigo"><label class="ufps-input ufps-red">10-Boris Perez</label><br>
                <input type="checkbox" name="codigo" value="codigo"><label class="ufps-input ufps-red">11-Jairo Fuentes</label><br> 
                <input type="checkbox" name="codigo" value="codigo"><label class="ufps-input ufps-red">12-Alirio Vega</label><br>
                <input type="checkbox" name="codigo" value="codigo"><label class="ufps-input ufps-red">13-Raul Rodriguez</label><br>
                <input type="checkbox" name="codigo" value="codigo"><label class="ufps-input ufps-red">14-Eduard Puerto</label><br>
                <input type="checkbox" name="codigo" value="codigo"><label class="ufps-input ufps-red">15-Janeth Parada</label><br>
                <input type="checkbox" name="codigo" value="codigo"><label class="ufps-input ufps-red">16-Marco Adarme</label><br>
                <input type="checkbox" name="codigo" value="codigo"><label class="ufps-input ufps-red">17-Mery Sarmiento</label><br>
                <input type="checkbox" name="codigo" value="codigo"> *-Todos<br>
            </div>
            
             <div class="ufps-col-mobile-6 ufps-col-tablet-6 ufps-col-netbook-12" align="center">
                <br><br>
                <input class="ufps-btn" id="dar" name="name" value="Iniciar Sistema" type="submit">
                <a href="../Vistas/Servicios.jsp">Atr�s</a>
            </div>
            
            <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>  <br><br><br><br><br><br><br><br><br><br>
            <!--Aqui coloco los n profesores, listados con checkbox los cuales seran habilitados
            por el director para ingresar informacion al sistema para periodo definido, se crea
            dinamicamente trayendo el codigo y el nombre del profesor-->
            
        </form>
        
    </div>

    <div id="tab2" class="ufps-tab-content">
    
        <form align="center">
            
            <div class="ufps-col-mobile-6 ufps-col-tablet-6 ufps-col-netbook-3">
            <label>Docente: </label>
            <!--aqui cargo en combo los registrados en bd y selecciona-->
            <select class="ufps-input ufps-red" id="docente" name="docente">
                <option value="1">1-Oscar Gallardo</option>
                <option value="2">2-Pilar Rojas</option>
                <option value="3">3-Carlos Pardo</option>
                <option value="4">4-Nelson Beltran</option>
                <option value="4">n-los n en Bd (resto)</option>
                <option value="*">*-Todos</option>
            </select>
            </div>
            
            <div class="ufps-col-mobile-6 ufps-col-tablet-6 ufps-col-netbook-3">
            <label>Nueva Fecha de Inicio:</label>
            <input class="ufps-input ufps-red" type="date" id="ninicio" name="ninicio">
            </div>
            
            <div class="ufps-col-mobile-6 ufps-col-tablet-6 ufps-col-netbook-3">
            <label>Nueva Fecha de Cierre:</label>
            <input class="ufps-input ufps-red" type="date" id="ncierre" name="ncierre">
            </div>
            
            <div class="ufps-col-mobile-6 ufps-col-tablet-6 ufps-col-netbook-3">
            <input class="ufps-btn" type="submit" id="registar" name="registrar" value="Guardar">
            <a href="../Vistas/Servicios.jsp">Atr�s</a>
            </div>
             <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
        </form><!--Aqui se termina el div del area de trabajo--> 
        
    </div>
</div> 

<!--Aqui empieza el footer, el pie de pagina de la aplicacion, nombre de la
universidad, programa, materia y desarrolladores-->

<!--Aqui coloco el footer, OJO con include-->
<jsp:include page="../../plantilla/footer.jsp"/>                                                                                                                                                                                                                                                                                                                 