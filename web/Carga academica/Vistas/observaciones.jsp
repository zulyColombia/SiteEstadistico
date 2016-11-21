
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
   
    <h1 align="center">Registro de Observaciones</h1>
    <!--Aqui se tiene las observaciones hechas-->
    
    <div class="ufps-col-mobile-6 ufps-col-tablet-6 ufps-col-netbook-12">
       <h3>Profesor:</h3>
        <!--aqui cargo en combo los registrados en bd y selecciona-->
        <select class="ufps-input ufps-red" id="docente" name="docente" align="center">
            <option value="1">1-Oscar Gallardo</option>
            <option value="2">2-Pilar Rojas</option>
            <option value="3">3-Carlos Pardo</option>
            <option value="4">4-Nelson Beltran</option>
            <option value="4">n-los n en Bd (resto)</option>
            <option value="*">*-Todos</option>
        </select>
        <br>
        <h3>Actividades de Docencia:</h3>
        <table class="ufps-table">
            
            <tr>
                <th style="width:70px">C�digo</th>
                <th>Nombre</th>
                <th style="width:60px">Grupo</th>
                <th>Observaci�n</th>
                <th>Acciones</th>
            </tr>
            
            <tr align="center">
                <td>1155101</td><td>Calculo Diferencial</td>
                <td>A</td>
                <td><input class="ufps-input" type="text" id="observacion" name="observacion"></td>
                
                <td>
                    <input type="radio" id="opcion" name="opcion" value="aprobar"><label class="ufps-green">Aprobar</label>
                    <input type="radio" id="opcion" name="opcion" value="observar"><label class="ufps-red">Rechazar</label>
                </td>
            </tr>
            
        </table>
        <br>
        <h3>Actividades de Investigaci�n:</h3>
        <table class="ufps-table ">
            <tr align="center">
                <th style="width:70px">C�digo</th>
                <th>Actividad</th>
                <th>Responsabilidad</th>
                <th>Unidad</th>
                <th>Observaci�n</th>
                <th>Acciones</th>
            </tr>
            <tr align="center">
                <td>1</td>
                <td>estudio abc</td>
                <td>Lider Proyecto</td>
                <td>Minas</td>
                <td><input class="ufps-input" type="text" id="observacion" name="observacion"></td>
                
                <td>
                    <input type="radio" id="opcion" name="opcion" value="aprobar"><label class="ufps-green">Aprobar</label>
                    <input type="radio" id="opcion" name="opcion" value="observar"><label class="ufps-red">Rechazar</label>
                </td>
            </tr>
        </table>
        <br>
        <h3>Actividades de Extensi�n:</h3>
        <table class="ufps-table ufps-container">
            <tr align="center">
                <th style="width:70px">C�digo</th>
                <th>Actividad</th>
                <th>Responsabilidad</th>
                <th>Unidad</th>
                <th>Observaci�n</th>
                <th>Acciones</th>
            </tr>
            <tr align="center">
                <td>1</td>
                <td>estudio xyz</td>
                <td>Lider Proyecto</td>
                <td>GIDIS</td>
                <td><input class="ufps-input" type="text" id="observacion" name="observacion"></td>
                
                <td>
                    <input type="radio" id="opcion" name="opcion" value="aprobar"><label class="ufps-green">Aprobar</label>
                    <input type="radio" id="opcion" name="opcion" value="observar"><label class="ufps-red">Rechazar</label>
                </td>
            </tr>
        </table>
        <br>
        <h3>Actividades de Administraci�n:</h3>
        <table class="ufps-table ufps-container">
            <tr align="center">
                <th style="width:70px">Consecutivo</th>
                <th>Cargo</th>
                <th>Horas Semanales</th>
                <th>Observaci�n</th>
                <th>Acciones</th>
            </tr>
            <tr align="center">
                <td>1</td>
                <td>Director de divisi�n</td>
                <td>10</td>
                <td><input class="ufps-input" type="text" id="observacion" name="observacion"></td>
                
                <td>
                    <input type="radio" id="opcion" name="opcion" value="aprobar"><label class="ufps-green">Aprobar</label>
                    <input type="radio" id="opcion" name="opcion" value="observar"><label class="ufps-red">Rechazar</label>
                </td>
            </tr>
        </table>
        <br>
        <h3>Otras Actividades:</h3>
        <table class="ufps-table ufps-container">
            <tr align="center">
                <th style="width:70px">C�digo</th>
                <th>Actividad</th>
                <th>Fecha 1er Informe</th>
                <th>Fecha 2do Informe</th>
                <th>Observaci�n</th>
                <th>Acciones</th>
            </tr>
            <tr align="center">
                <td>1</td>
                <td>Hacer Objetivos</td>
                <td>12/11/2016</td>
                <td>14/11/2016</td>
                <td><input class="ufps-input" type="text" id="observacion" name="observacion"></td>
                
                <td>
                    <input type="radio" id="opcion" name="opcion" value="aprobar"><label class="ufps-green">Aprobar</label>
                    <input type="radio" id="opcion" name="opcion" value="observar"><label class="ufps-red">Rechazar</label>
                </td>
            </tr>
        </table>
    </div>

    </form><!--Aqui se termina el div del area de trabajo-->
    </div>
    </div>

        <!--Aqui empieza el footer, el pie de pagina de la aplicacion, nombre de la
        universidad, programa, materia y desarrolladores-->
  
<!--Aqui coloco el footer, OJO con include-->
<jsp:include page="../../plantilla/footer.jsp"/>                                                                                                                                                                                                                                                                                                                