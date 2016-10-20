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
            <h1 align="center">App Carga Acad�mica Docentes: Actividades de Docencia</h1>
            <!--tabla del formato de la ing pilar rodriguez relacionado a docencia de 6*10
            6 filas por 10 columnas y luego se subdividen segun el caso.-->
            <table class="ufps-table ufps-text-jusfity">

                <tr>
                    <th colspan="3">Identificaci�n de la Actividad (MATERIA)</th>
                    <th rowspan="2">Cred</th>
                    <th rowspan="2">N� Estudiantes</th>
                    <th rowspan=2>Nivel</th>
                    <th colspan="3">Hora Semanal</th>
                    <th colspan="2">Total Horas </th> 
                    <th rowspan="2">Acci�n</th>
                </tr>
                
                <tr>
                    <td>C�digo</td>
                    <td>Grupo</td>
                    <td>Nombre</td>
                    <td>T</td> 
                    <td>TP</td>
                    <td>P</td>
                    <td>Semanal</td>
                    <td>Semestral</td>
                </tr>

                <tr>
                    <th>
                        <br>
                        <input class="ufps-input ufps-red" type="number" min="0" max="7777777" name="codigo" id="codigo" required="required">
                    </th>
                    <th>
                        <br>
                        <select class="ufps-input ufps-red" id="grupo" name="grupo">
                            <option id="A" name="A">A</option>
                            <option id="B" name="B">B</option>
                        </select>
                    </th>
                    <th>
                        <br>
                        <input class="ufps-input ufps-red" type="text" placeholder="Ej:Seminario Integrador 3" name="materia" id="materia" required="required">
                    </th>
                    <th>
                        <br>
                        <input class="ufps-input ufps-red" value="0" width="10" type="number" maxlength="2" min="1" max="20" name="creditos" id="creditos" required="required">
                    </th>
                    <th>
                        <br>
                        <input class="ufps-input ufps-red" value="0" type="number" maxlength="2" min="1" max="50" name="estudiantes" id="estudiantes" required="required">
                    </th>
                    <th>
                        <br>
                        <select class="ufps-input ufps-red" id="nivel" name="nivel">
                            <option id="pregrado" name="pregrado">Pregrado</option>
                            <option id="postgrado" name="postgrado">Postgrado</option>
                        </select>
                    </th> 
                    <th>
                        <br>
                        <input class="ufps-input ufps-red" value="0" type="number" maxlength="2" min="0" max="20" name="teorico" id="teorico" required="required">
                    </th>
                    <th>
                        <br>
                        <input class="ufps-input ufps-red" value="0" type="number" maxlength="2" min="0" max="20" name="teoricoPractico" id="teoricoPractico" required="required">
                    </th>
                    <th>
                        <br>
                        <input class="ufps-input ufps-red" value="0" type="number" maxlength="2" min="0" max="20" name="practico" id="practico" required="required" onclick=distribucion()>
                    </th>
                    <th>
                        <br>
                        <input class="ufps-input ufps-red" value="0" type="number" maxlength="2" min="0" max="20" name="semanal" id="semanal" required="required" disabled="true">
                    </th>
                    <th>
                        <br>
                        <input class="ufps-input ufps-red" value="0" type="number" maxlength="2" min="0" max="20" name="semestral" id="semestral" required="required" disabled="true">
                    </th>
                    <th>
                        <br>
                        <input type="submit" class="ufps-btn" id="registrar" name="registrar" value="guardar" onclick=sumarSubtotales()>
                    </th>
                </tr>

                <!--De aqui para abajo se crean las celdas con la informacion almacenada en la base de datos, ordenada por
                fecha de registro y se tendra la opcion de editar o borrar ese registro.-->
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
                    <th>-</th>
                    <th>-</th>
                    <th>-</th>
                </tr>

                <tr>
                    <th colspan="3">Subtotal</th>
                    <th>
                        <input class="ufps-input ufps-red" type="number" value=0 maxlength="2" min="0" max="20" name="subcred" id="subcred" required disabled="true">
                    </th>
                    <th>
                        <input class="ufps-input ufps-red" type="number" value=0 maxlength="2" min="0" max="20" name="subEstud" id="subEstud" required disabled="true">
                    </th>
                    <th>-</th>
                    <th>
                        <input class="ufps-input ufps-red" type="number" value=0 maxlength="2" min="0" max="20" name="subT" id="subT" required disabled="true">
                    </th>
                    <th>
                        <input class="ufps-input ufps-red" type="number" value=0 maxlength="2" min="0" max="20" name="subTP" id="subTP" required disabled="true">
                    </th> 
                    <th>
                        <input class="ufps-input ufps-red" type="number" value=0 maxlength="2" min="0" max="20" name="subP" id="subP" required disabled="true">
                    </th>
                    <th>
                        <input class="ufps-input ufps-red" type="number" value=0 maxlength="2" min="0" max="20" name="subSemanal" id="subSemanal" required disabled="true">
                    </th>
                    <th>
                        <input class="ufps-input ufps-red" type="number" value=0 maxlength="2" min="0" max="20" name="subSemestral" id="subSemestral" required disabled="true">
                    </th>
                    <th>-</th>
                </tr>
            </table>
            <center>T: te�rico, TP: te�rico-pr�ctico, P: pr�ctico / Cred: Cr�dito / Semestre=16 Semanas</center>
            <br>
        </form><!--Aqui se termina el div del area de trabajo-->
        </div>
        </div>
        <!--Aqui empieza el footer, el pie de pagina de la aplicacion, nombre de la
        universidad, programa, materia y desarrolladores-->
       
<!--Aqui coloco el footer, OJO con include-->
<jsp:include page="../../plantilla/footer.jsp"/>           

        <script>
            
            function distribucion(){

                var sumCred=parseInt(document.getElementById("teorico").value)+
                            parseInt(document.getElementById("teoricoPractico").value)+
                            parseInt(document.getElementById("practico").value);

                document.getElementById("semanal").value=sumCred;

                var sonCred=parseInt(document.getElementById("creditos").value);

                if(sumCred>sonCred){
                    alert("Error las horas T-TP-P superan el n�mero de Cr�ditos"); 
                }
                else if(sumCred<sonCred){
                    alert("Error las horas T-TP-P son inferior al n�mero de Cr�ditos");
                }
                else{
                    document.getElementById("semestral").value=parseInt(document.getElementById("semanal").value)*16;
                }
            }

            function sumarSubtotales(){
                sumoCreditos();
                sumoEstudiantes();
                sumoT();
                sumoTP();
                sumoP();
                sumoSemanal();
                sumoSemestral();
            }

            function sumoCreditos(){
                document.getElementById("subcred").value=parseInt(document.getElementById("creditos").value)+
                                                         parseInt(document.getElementById("subcred").value);
            }
            function sumoEstudiantes(){
                document.getElementById("subEstud").value=parseInt(document.getElementById("estudiantes").value)+
                                                          parseInt(document.getElementById("subEstud").value);
            }
            function sumoT(){
                document.getElementById("subT").value=parseInt(document.getElementById("teorico").value)+
                                                      parseInt(document.getElementById("subT").value);
            }
            function sumoTP(){
                document.getElementById("subTP").value=parseInt(document.getElementById("teoricoPractico").value)+
                                                       parseInt(document.getElementById("subTP").value);
            }
            function sumoP(){
                document.getElementById("subP").value=parseInt(document.getElementById("practico").value)+
                                                      parseInt(document.getElementById("subP").value);
            }
            function sumoSemanal(){
                document.getElementById("subSemanal").value=parseInt(document.getElementById("semanal").value)+
                                                            parseInt(document.getElementById("subSemanal").value);
            }
            function sumoSemestral(){
                document.getElementById("subSemestral").value=parseInt(document.getElementById("semestral").value)+
                                                              parseInt(document.getElementById("subSemestral").value);
            //pues mensaje si guard� problema con la base de datos, en caso de error debera decir cual
            alert("Exito Regitr� Informaci�n");
            }
            
        </script>                                                                                                                                                                                                                                                                                 