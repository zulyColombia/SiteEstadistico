                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 <!DOCTYPE html>
<!--@uthor: victor urbina 1150962-->

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
            <h1 align="center">App Carga Acad�mica Docentes: Actividades de Extensi�n</h1>

            <!--Aqui va la tabla con la informacion relacionada a las actividades de extension de
            un docente, se dispuso: 8*12 y se combina y adecua segun el formato-->

            <table class="ufps-table ufps-text-jusfity">
                <tr>
                    <th rowspan="2">C�digo</th>
                    <th rowspan="2">Actividad</th>
                    <th rowspan="2">Responsabilidad</th>
                    <th rowspan="2">Unidad</th>
                    <th rowspan="2">Programa o Beneficiario</th>
                    <th colspan="2">Horas Semanal</th>
                    <th rowspan="2">Horas Semestre</th>
                    <th rowspan="2">Acci�n</th>
                </tr>

                <tr>
                    <th>Ejecuci�n</th>
                    <th>Programaci�n</th>
                </tr>

                <tr>
                    <th>
                        <br>
                        <input class="ufps-input ufps-red" style="width:80px" type="number" min="0" max="7777777" name="codigo" id="codigo" required>
                    </th>
                    <th>
                        <br>
                        <input class="ufps-input ufps-red" style="width:180px" type="text" placeholder="Ej:actividad 1" name="actividad" id="actividad" required>
                    </th>
                    <th><br>
                        <select class="ufps-input ufps-red" style="width:145px" id="responsabilidad" name="responsabilidad">
                           <option value="directorGrupo">Director de Grupo</option>
                           <option value="directorProyecto">Director de Proyecto</option>
                           <option value="directorSemillero">Director de Semillero</option>
                           <option value="jovenInvestigador">Joven Investigador</option>
                           <option value="participante">Participante</option>
                        </select>
                    </th>
                    <th>
                        <br>
                        <input class="ufps-input ufps-red" style="width:180px" type="text" placeholder="Ej:facultad/departamento" name="unidadInvestigativa" id="unidadInvestigativa" required>
                    </th>
                    <th>
                        <br>
                        <input class="ufps-input ufps-red" style="width:180px" type="text" placeholder="Ej:fundacion..." name="beneficiario" id="beneficiario" required>
                    </th>
                    <th>
                        <br>
                        <input class="ufps-input ufps-red" style="width:40px" type="number" maxlength="2" min="0" max="50" name="ejecucion" id="ejecucion" required>
                    </th>
                    <th>
                        <br>
                        <input class="ufps-input ufps-red" style="width:40px" type="number" maxlength="2" min="0" max="50" name="programacion" id="programacion" required>
                    </th>
                    <th>
                        <br>
                        <input class="ufps-input ufps-red" style="width:40px" type="number" maxlength="2" min="0" max="20" name="horaSemestre" id="horaSemestre" required disabled="true">
                    </th>
                    <th><br><input class="ufps-btn" type="submit" id="registrar" name="registrar" value="guardar" onclick="subTotal()"></th>
                </tr>

                <tr>
                    <th>-</th>
                    <th>-</th>
                    <th>-</th>
                    <th>-</th>
                    <th>-</th>
                    <th>-</th>
                    <th>-</th>
                    <th>-</th>
                    <th>-</th>
                </tr>

                <tr>
                    <th>-</th>
                    <th>-</th>
                    <th>-</th>
                    <th>-</th>
                    <th>-</th>
                    <th>-</th>
                    <th>-</th>
                    <th>-</th>
                    <th>-</th>
                </tr>

                <tr>
                    <th>-</th>
                    <th>-</th>
                    <th>-</th>
                    <th>-</th>
                    <th>-</th>
                    <th>-</th>
                    <th>-</th>
                    <th>-</th>
                    <th>-</th>
                </tr>

                <tr>
                    <th>-</th>
                    <th>-</th>
                    <th>-</th>
                    <th>-</th>
                    <th>-</th>
                    <th>-</th>
                    <th>-</th>
                    <th>-</th>
                    <th>-</th>
                </tr>

                <tr>
                    <th>-</th>
                    <th>-</th>
                    <th>-</th>
                    <th>-</th>
                    <th>-</th>
                    <th>-</th>
                    <th>-</th>
                    <th>-</th>
                    <th>-</th>
                </tr>

                <tr>
                    <th>-</th>
                    <th>-</th>
                    <th>-</th>
                    <th>-</th>
                    <th>-</th>
                    <th>-</th>
                    <th>-</th>
                    <th>-</th>
                    <th>-</th>
                </tr>

                <tr>
                    <th>-</th>
                    <th>-</th>
                    <th>-</th>
                    <th>-</th>
                    <th>-</th>
                    <th>-</th>
                    <th>-</th>
                    <th>-</th>
                    <th>-</th>
                </tr>

                <tr>
                    <th>-</th>
                    <th>-</th>
                    <th>-</th>
                    <th>-</th>
                    <th>-</th>
                    <th>-</th>
                    <th>-</th>
                    <th>-</th>
                    <th>-</th>
                </tr>

                <tr>
                    <th colspan="5">subtotal</th>
                    <th>
                       <input class="ufps-input ufps-red" style="width:40px" type="number" value=0 maxlength="2" min="0" max="20" name="subEjecucion" id="subEjecucion" required disabled="true">
                    </th>
                    <th>
                       <input class="ufps-input ufps-red" style="width:40px" type="number" value=0 maxlength="2" min="0" max="20" name="subProgramacion" id="subProgramacion" required disabled="true">
                    </th>
                    <th>
                       <input class="ufps-input ufps-red" style="width:40px" type="number" value=0 maxlength="2" min="0" max="20" name="subSemestre" id="subSemestre" required disabled="true">
                    </th>
                    <th>-</th>
                </tr>

            </table>
            <br>
        </form><!--Aqui se termina el div del area de trabajo-->
        </div>
        </div>

        <!--Aqui empieza el footer, el pie de pagina de la aplicacion, nombre de la
        universidad, programa, materia y desarrolladores-->
       
<!--Aqui coloco el footer, OJO con include-->
<jsp:include page="../../plantilla/footer.jsp"/>       

<script>
    
    function subTotal(){
        subEjecucion();
        subProgramacion();
        subSemestre();
    }
    
    function subEjecucion(){
        document.getElementById("subEjecucion").value=parseInt(document.getElementById("ejecucion").value)+
                                                  parseInt(document.getElementById("subEjecucion").value);
    }
    
    function subProgramacion(){
        document.getElementById("subProgramacion").value=parseInt(document.getElementById("programacion").value)+
                                                  parseInt(document.getElementById("subProgramacion").value);
    }
    
    function subSemestre(){
        document.getElementById("subSemestre").value=parseInt(document.getElementById("horaSemestre").value)+
                                                  parseInt(document.getElementById("subSemestre").value);
        //pues mensaje si guard� problema con la base de datos, en caso de error debera decir cual
        alert("Exito Regitr� Informaci�n");
    }
    
</script>                                                                                                                                                                                                                                                                                                           