  
<!--@uthor: victor urbina 1150962-->                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               <!DOCTYPE html>
       
        <!--Aqui coloco el header, OJO con include-->
        <jsp:include page="../Vistas/header_us.jsp"/>
    
        <!--Contenido-->
        <!--Aqui empieza el area de trabajo, que cambiara dependiendo de las funcionalidades
        a la cual se quiera tener acceso, segun el boton, o accion ejecutada tras un clic, y 
        en relacion al tipo de usuario, esta seccion sera dinamica, el resto de vistas estaran
        dentro de un div-->
        <div class="ufps-container-fluid">
        <div class="ufps_row">
        <h1 align="center">App Carga Acad�mica Docentes: Administrar la App</h1>
        <div class="ufps-col-mobile-6 ufps-col-tablet-6 ufps-col-netbook-6">
       
        <form  align="center">
            Inicio y Cierre
            <label>A�o:</label>
            <input class="ufps-input ufps-red" type="number" id="ano" name="ano" value="2016" min="2016" max="2099"> 
            <br><br>
            <label>Semestre:</label>
            <select class="ufps-input ufps-red" id="semestre" name="semestre">
                <option value="1">1</option>
                <option value="2">2</option>
            </select>
            <br><br>
            <!--Aqui coloco los n profesores, listados con checkbox los cuales seran habilitados
            por el director para ingresar informacion al sistema para periodo definido, se crea
            dinamicamente trayendo el codigo y el nombre del profesor-->
            Listado de Profesores a habilitar:<br><br>
            <input type="checkbox" name="codigo" value="codigo"> 1-Oscar<br>
            <input type="checkbox" name="codigo" value="codigo"> 2-Pilar<br>
            <input type="checkbox" name="codigo" value="codigo"> 3-Maria<br>
            <input type="checkbox" name="num_empleados" value="codigo"> 4-Nelson<br>
            <input type="checkbox" name="codigo" value="codigo"> 5-Matias<br>
            <input type="checkbox" name="codigo" value="codigo"> 6-Fredy<br>
            <input type="checkbox" name="codigo" value="codigo"> 7-Milton<br>
            <input type="checkbox" name="codigo" value="codigo"> 8-Carlos<br>
            <input type="checkbox" name="codigo" value="codigo"> 9-Rosana<br>
              
            <br>
           <input class="ufps-btn" id="dar" name="name" value="Dar" type="submit">
        </form>
        </div>
        
        <div class="ufps-col-mobile-6 ufps-col-tablet-6 ufps-col-netbook-6">
        <form align="center">
            Dar Prorroga a Docente<br><br>     
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
            <br><br>
           <label>Nueva Fecha de Cierre:</label>
           <input class="ufps-input ufps-red" type="date" id="Ncierre" name="Ncierre">
           <br><br>
           <label>Inicio de Registros:</label>
           <input class="ufps-input ufps-red" type="date" id="inicio" name="inicio">
           <br><br>
           <label>Fecha de Cierre:</label>
           <input class="ufps-input ufps-red" type="date" id="cierre" name="cierre">
           <br><br>
           <input class="ufps-btn" type="submit" id="registar" name="registrar" value="Guardar">
        </form><!--Aqui se termina el div del area de trabajo-->
        </div>
        
        </div>
        </div>
        <!--Aqui empieza el footer, el pie de pagina de la aplicacion, nombre de la
        universidad, programa, materia y desarrolladores-->
        
<!--Aqui coloco el footer, OJO con include-->
<jsp:include page="../../plantilla/footer.jsp"/>                                                                                                                                                                                                                                                                                                                 