/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package academico.Interface;

import academico.DTO.EstudianteDTO;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author Mauricio
 */
public interface IUtilDAO {
    
    public ArrayList<String> asignaturasDoc(int codig_doc) throws SQLException;
    public ArrayList<EstudianteDTO> obtenerEstudiantes (int cod_asign) throws SQLException;
}
