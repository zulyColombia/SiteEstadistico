/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package gestionUsuarios;

import java.util.List;

/**
 *
 * @author Lenovo
 */
public interface ICuenta {
    
    public boolean containReqerimiento(String rf);
    public boolean containModulo(String nomModulo);
    public boolean containRol(String rol);
    public List<String> listarRoles();
    public List<String> listarModulos();
    public List<String> listarRequerimientosF();
    public List<String> listarRequerimientosFDeModulos(String modulos);
    
}