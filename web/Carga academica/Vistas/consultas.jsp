                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 <!DOCTYPE html>
<!--@uthor: victor urbina 1150962-->
    
<!--Aqui coloco el header, OJO con include-->
<jsp:include page="../Vistas/header_us.jsp"/>

    <!--Contenido-->
    <!--Aqui empieza el area de trabajo, que cambiara dependiendo de las funcionalidades
    a la cual se quiera tener acceso, segun el boton, o accion ejecutada tras un clic, y 
    en relacion al tipo de usuario, esta seccion sera dinamica, el resto de vistas estaran
    dentro de un div-->
    <div class="ufps-container">
        <div class="ufps_row">
            <h1 align="center">App Carga Académica Docentes: Consultas y Reportes</h1>
            <div class="ufps-col-mobile-6 ufps-col-tablet-6 ufps-col-netbook-6">
                <form  align="center">
                    <!--AQUI VA TODO EL CODIGO DINAMICO QUE CAMBIA SEGUN LAS INFORMACION, FUNCION Y USUARIO-->
                    <center>Generales</center>
                    <br><br>

                    <label>1. Año:</label> 
                    <input type="number" id="ano" name="ano" value="2016" class="ufps-input ufps-red" min="2016" max="2099"> 
                    <br><br>
                    
                    <label>2. Semestre:</label>
                    <select class="ufps-input ufps-red" id="semestre" name="semestre">
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="ambos">Ambos</option>
                    </select>
                    <br><br>

                    <label>3. Profesor:</label>
                    <!--aqui cargo en combo los docentes registrados en bd y selecciona-->
                    <select class="ufps-input ufps-red" id="docente" name="docente">
                    <option value="1">1-Oscar Gallardo</option>
                    <option value="2">2-Pilar Rojas</option>
                    <option value="3">3-Carlos Pardo</option>
                    <option value="4">4-Nelson Beltran</option>
                    <option value="4">n-los n en Bd (resto)</option>
                    <option value="*">*-Todos</option>
                    </select>
                    <br><br>

                    <label>4. Tipo de Vinculación</label>
                    <select class="ufps-input ufps-red" id="tipoVinculacion" name="tipoVinculacion">
                    <option value="tiempoCompleto">Tiempo Completo</option>
                    <option value="medioTiempo">Medio Tiempo</option>
                    <option value="ocasional">Ocasional</option>
                    <option value="cualquiera">Cualquiera</option>
                    </select>
                    <br><br>

                    <label>5. Materia</label>
                    <!--aqui cargo en combo las materias registrados en bd y selecciona-->
                    <select class="ufps-input ufps-red" id="materia" name="materia">
                    <option value="1">1-Análisis y Diseño</option>
                    <option value="2">2-Fundamentos</option>
                    <option value="3">3-POO</option>
                    <option value="4">4-Moviles</option>
                    <option value="4">n-las n en Bd (resto)</option>
                    <option value="*">*-Todas</option>
                    </select>
                    <br><br>

                    <label>6. Actividades:</label>
                    <select class="ufps-input ufps-red" id="actividades" name="actividades">
                    <option value="informacion">Información Personal</option>
                    <option value="docencia">ActividadesDocencia</option>
                    <option value="investigacion">ActividadesInvestigación</option>
                    <option value="extension">ActividadesExtensión</option>
                    <option value="administracion">ActividadesAdministración</option>
                    <option value="otras">Otras Actividades</option>
                    <option value="otras">Todas</option>
                    </select>
                    <br><br>

                    <label>7. Horas Semana:</label>
                    <select class="ufps-input ufps-red" id="horas" name="horas">
                    <option value="08">x<=8</option>
                    <option value="916">9<=x<=16</option>
                    <option value="1725">17<=x<=25</option>
                    <option value="2634">26<=x<=34</option>
                    <option value="3543">35<=x<=43</option>
                    <option value="4452">44<=x<=52</option>
                    <option value="53mas">53<=x<=N</option>
                    </select>
                    <br><br>

                    <input class="ufps-btn" type="submit" id="consultarGer" name="consultarGer" value="Consultar">
                    <input class="ufps-btn" type="submit" id="graficarGer" name="graficarGer" value="Graficar">
                    <br><br>
                </form>
            </div>

            <div class="ufps-col-mobile-6 ufps-col-tablet-6 ufps-col-netbook-6">
                <form>
                    <center>Específicos</center>
                    <br><br>
                    <label>1. Año:</label> 
                    <input type="number" id="ano" name="ano" value="2016" class="ufps-input ufps-red" min="2016" max="2099"> 
                    <br><br>

                    <label>2. Semestre:</label>
                    <select class="ufps-input ufps-red" id="semestre" name="semestre">
                    <option value="1">1</option>
                    <option value="2">2</option>
                    <option value="ambos">Ambos</option>
                    </select>
                    <br><br>

                    <label>3. Profesor:</label>
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

                    <label>4. Tipo de Vinculación</label>
                    <select class="ufps-input ufps-red" id="tipoVinculacion" name="tipoVinculacion">
                    <option value="tiempoCompleto">Tiempo Completo</option>
                    <option value="medioTiempo">Medio Tiempo</option>
                    <option value="ocasional">Ocasional</option>
                    <option value="cualquiera">Cualquiera</option>
                    </select>
                    <br><br>

                    <label>5. Materia</label>
                    <!--aqui cargo en combo las materias registrados en bd y selecciona-->
                    <select class="ufps-input ufps-red" id="materia" name="materia">
                    <option value="1">1-Análisis y Diseño</option>
                    <option value="2">2-Fundamentos</option>
                    <option value="3">3-POO</option>
                    <option value="4">4-Moviles</option>
                    <option value="4">n-las n en Bd (resto)</option>
                    <option value="*">*-Todas</option>
                    </select>
                    <br><br>

                    <label>6. Actividades:</label>
                    <select class="ufps-input ufps-red" id="actividades" name="actividades">
                    <option value="informacion">Información Personal</option>
                    <option value="docencia">ActividadesDocencia</option>
                    <option value="investigacion">ActividadesInvestigación</option>
                    <option value="extension">ActividadesExtensión</option>
                    <option value="administracion">ActividadesAdministración</option>
                    <option value="otras">Otras Actividades</option>
                    </select>
                    <br><br>

                    <label>7. Horas Semana:</label>
                    <select class="ufps-input ufps-red" id="horas" name="horas">
                    <option value="08">x<=8</option>
                    <option value="916">9<=x<=16</option>
                    <option value="1725">17<=x<=25</option>
                    <option value="2634">26<=x<=34</option>
                    <option value="3543">35<=x<=43</option>
                    <option value="4452">44<=x<=52</option>
                    <option value="53mas">53<=x<=N</option>
                    </select>
                    <br><br>

                    <input class="ufps-btn" type="submit" id="consultarEsp" name="consultarEsp" value="Consultar">
                    <input class="ufps-btn" type="submit" id="graficarEsp" name="graficarEsp" value="Graficar">
                    <br><br>

                </form><!--Aqui se termina el div del area de trabajo-->
            </div>
            <center> Resultados se mostrarán generando un pdf o excel, o una nueva vista gráfico o datos</center>
        </div>
    </div>
    <!--Aqui empieza el footer, el pie de pagina de la aplicacion, nombre de la
    universidad, programa, materia y desarrolladores-->

<!--Aqui coloco el footer, OJO con include-->
<jsp:include page="../../plantilla/footer.jsp"/>                                                                                                                                                                                                                                                                                                                