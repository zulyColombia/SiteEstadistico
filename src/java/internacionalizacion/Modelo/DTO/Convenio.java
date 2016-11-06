/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package internacionalizacion.Modelo.DTO;

import java.util.Date;

/**
 *
 * @author JAVIER
 */
public class Convenio {
    
    int id;
    String nombre;
    String fechacreacion;
    String fechaterminacion;
    String descripcion;
    String estado;
    String vigencia;
    String tipoconvenio;
    int entidad;
    String urlimagen;
    
    
    public Convenio() {
    }

    public Convenio(String nombre, String descripcion, String vigencia, String tipoconvenio, String estado, String fechacreacion, String fechaterminacion, int entidad) {
        //this.id = id;
        this.nombre = nombre;
        this.fechacreacion = fechacreacion;
        this.fechaterminacion = fechaterminacion;
        this.descripcion = descripcion;
        this.estado = estado;
        this.vigencia = vigencia;
        this.tipoconvenio = tipoconvenio;
        this.entidad = entidad;
        //this.urlimagen = urlimagen;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getFechacreacion() {
        return fechacreacion;
    }

    public void setFechacreacion(String fechacreacion) {
        this.fechacreacion = fechacreacion;
    }

    public String getFechaterminacion() {
        return fechaterminacion;
    }

    public void setFechaterminacion(String fechaterminacion) {
        this.fechaterminacion = fechaterminacion;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public String getVigencia() {
        return vigencia;
    }

    public void setVigencia(String vigencia) {
        this.vigencia = vigencia;
    }

    public String getTipoconvenio() {
        return tipoconvenio;
    }

    public void setTipoconvenio(String tipoconvenio) {
        this.tipoconvenio = tipoconvenio;
    }

    public int getEntidad() {
        return entidad;
    }

    public void setEntidad(int entidad) {
        this.entidad = entidad;
    }

    public String getUrlimagen() {
        return urlimagen;
    }

    public void setUrlimagen(String urlimagen) {
        this.urlimagen = urlimagen;
    }
    
   
    
    
}
