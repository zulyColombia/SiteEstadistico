/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package internacionalizacion.Modelo.DTO;

/**
 *
 * @author JAVIER
 */
public class Entidad {
    
    int id;
    int NIT;
    String nombre;
    String sector;
    String representante;
    String ambito;
    String tipo;
    String telefono;
    int pais;
    
    public Entidad(){
        
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getNIT() {
        return NIT;
    }

    public void setNIT(int NIT) {
        this.NIT = NIT;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getSector() {
        return sector;
    }

    public void setSector(String sector) {
        this.sector = sector;
    }

    public String getRepresentante() {
        return representante;
    }

    public void setRepresentante(String representante) {
        this.representante = representante;
    }

    public String getAmbito() {
        return ambito;
    }

    public void setAmbito(String ambito) {
        this.ambito = ambito;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public String getTelefono() {
        return telefono;
    }

    public void setTelefono(String telefono) {
        this.telefono = telefono;
    }

    public int getPais() {
        return pais;
    }

    public void setPais(int pais) {
        this.pais = pais;
    }

    
    public Entidad(int id, int NIT, String nombre, String sector, String representante, String ambito, String tipo, String telefono, int pais) {
        this.id = id;
        this.NIT = NIT;
        this.nombre = nombre;
        this.sector = sector;
        this.representante = representante;
        this.ambito = ambito;
        this.tipo = tipo;
        this.telefono = telefono;
        this.pais = pais;
    }    
}