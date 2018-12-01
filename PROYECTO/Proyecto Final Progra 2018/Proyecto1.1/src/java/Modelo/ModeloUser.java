/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import dao.Cliente;
import dao.Usuario;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;

/**
 *
 * @author Familia
 */
public class ModeloUser extends Conexion{
    
     public boolean auntenticar(Usuario u){
        boolean flag = false;
        PreparedStatement pst = null;
        ResultSet rs = null;
        
        try{
                String sql = "select * from usuario where  Cedula = ? and Contraseña = ?";
                pst = getConnection().prepareStatement(sql);
                pst.setInt(1, u.getCedula());
                pst.setString(2,u.getContraseña());
       
                
                rs = pst.executeQuery();
                if(rs.absolute(1)){
                    flag = true;
                }
                
            }   catch (Exception e){
                System.err.println("ERROR5"+e);
            } finally{
            
            try{
                if (getConnection() != null) getConnection().close();
                if(pst != null) pst.close();
                if(rs != null) rs.close();
                
            }   catch (Exception e){
                System.err.println("ERROR6"+e);
            } 
        }
        
        return flag;
    }
     
     
 
}
