  
<!--@uthor: victor urbina 1150962-->
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               <!DOCTYPE html>
<!--Aqui coloco el header, OJO con include-->
<jsp:include page="../Vistas/header_us.jsp"/>

    <!--Contenido-->
    <!--Aqui empieza el area de trabajo, que cambiara dependiendo de las funcionalidades
    a la cual se quiera tener acceso, segun el boton, o accion ejecutada tras un clic, y 
    en relacion al tipo de usuario, esta seccion sera dinamica, el resto de vistas estaran
    dentro de un div-->
    <div class="ufps-container-fluid">
    <div class="ufps_row">
    <form  align="center">

        <!--AQUI VA TODO EL CODIGO DINAMICO QUE CAMBIA SEGUN LAS INFORMACION, FUNCION Y USUARIO-->
        <h1 align="center">Regitro de Actividades de Docencia</h1>
        <!--tabla del formato de la ing pilar rodriguez relacionado a docencia de 6*10
        6 filas por 10 columnas y luego se subdividen segun el caso.-->

        <div class="ufps-col-mobile-6 ufps-col-tablet-6 ufps-col-netbook-3">
            <label>C�digo de la Materia:</label>
            <input class="ufps-input ufps-red" type="number" min="0" max="7777777" name="codigo" id="codigo" required="required">
        </div>

        <div class="ufps-col-mobile-6 ufps-col-tablet-6 ufps-col-netbook-3">
            <label>Cr�ditos:</label>
            <input class="ufps-input ufps-red" type="number" min="0" max="7777777" name="creditos" id="creditos" required="required">
        </div>

        <div class="ufps-col-mobile-6 ufps-col-tablet-6 ufps-col-netbook-3">
            <label>Grupo</label>
            <select class="ufps-input ufps-red" id="grupo" name="grupo">
                <option id="A" name="A">A</option>
                <option id="B" name="B">B</option>
                <option id="C" name="C">C</option>
                <option id="D" name="D">D</option>
            </select>
        </div>

        <div class="ufps-col-mobile-6 ufps-col-tablet-6 ufps-col-netbook-3">
            <label>Nivel:</label>
            <select class="ufps-input ufps-red" id="nivel" name="nivel">
                <option id="pregrado" name="pregrado">Pregrado</option>
                <option id="postgrado" name="postgrado">Postgrado</option>
            </select>
        </div>

        <div class="ufps-col-mobile-6 ufps-col-tablet-6 ufps-col-netbook-3">
            <label>Nombre:</label>
            <input class="ufps-input ufps-red" type="text" placeholder="Ej:Seminario Integrador 3" name="materia" id="materia" required="required">
        </div>

        <div class="ufps-col-mobile-6 ufps-col-tablet-6 ufps-col-netbook-3">
            <label>Horas Te�ricas:</label>
            <input class="ufps-input ufps-red" value="0" type="number" maxlength="2" min="0" max="20" name="teorico" id="teorico" required="required">
        </div>   

        <div class="ufps-col-mobile-6 ufps-col-tablet-6 ufps-col-netbook-3">
            <label>Horas Te�rico Pr�cticas:</label>
            <input class="ufps-input ufps-red" value="0" type="number" maxlength="2" min="0" max="20" name="teoricoPractico" id="teoricoPractico" required="required">
        </div>

        <div class="ufps-col-mobile-6 ufps-col-tablet-6 ufps-col-netbook-3">
            <label>Horas Pr�cticas:</label>
            <input class="ufps-input ufps-red" value="0" type="number" maxlength="2" min="0" max="20" name="practico" id="practico" required="required" onclick=distribucion()>
        </div>

        <div class="ufps-col-mobile-6 ufps-col-tablet-6 ufps-col-netbook-3">
            <label>Hora Semanal:</label>
            <input class="ufps-input ufps-red" value="0" type="number" maxlength="2" min="0" max="20" name="semanal" id="semanal" required="required" disabled="true">
        </div>

        <div class="ufps-col-mobile-6 ufps-col-tablet-6 ufps-col-netbook-3">
            <label>Hora Semestral:</label>
            <input class="ufps-input ufps-red" value="0" type="number" maxlength="2" min="0" max="20" name="semestral" id="semestral" required="required" disabled="true">
        </div>

        <div class="ufps-col-mobile-6 ufps-col-tablet-6 ufps-col-netbook-3">
            <label>N� Estudiantes:</label>
            <input class="ufps-input ufps-red" value="0" type="number" maxlength="2" min="1" max="50" name="estudiantes" id="estudiantes" required="required">
        </div>

        <div class="ufps-col-mobile-6 ufps-col-tablet-6 ufps-col-netbook-3">
            <input type="submit" class="ufps-btn" id="registrar" name="registrar" value="guardar" onclick=sumarSubtotales()>
            <a href="../Vistas/Servicios.jsp">Atr�s</a>
        </div>
       
    </form><!--Aqui se termina el div del area de trabajo-->
    </div></div>
    
    <br>
    <table class="ufps-table ufps-container">
        <tr align="center"><th>C�digo</th><th>Nombre</th><th>Grupo</th></tr>
        <tr align="center"><td>1</td><td>Calculo Diferencial</td><td>A</td></tr>
    </table>

<!--Aqui empieza el footer, el pie de pagina de la aplicacion, nombre de la
universidad, programa, materia y desarrolladores-->
       
<!--Aqui coloco el footer, OJO con include-->
<jsp:include page="../../plantilla/footer.jsp"/>                                                                                                                                                                                                                                                                                          