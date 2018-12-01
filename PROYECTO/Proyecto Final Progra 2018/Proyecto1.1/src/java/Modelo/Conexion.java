/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author Christian
 */
public class Conexion {
    private String USERNAME = "app";
    private String PASSWORD = "";
    private String HOST = "localhost";
    private String PORT = "1527";
    private String DATABASE = "sample";
    private String CLASSNAME = "com.mysql.jdbc.Driver";
    private String URL = "jdbc:derby://"+HOST+":"+PORT+"/"+DATABASE; //mysql, derby//
    private Connection con;
    
    public Conexion(){
        try{
            Class.forName(CLASSNAME);
            con = DriverManager.getConnection(URL, USERNAME, PASSWORD);
        } catch (ClassNotFoundException e){
            System.err.println("ERROR1"+e);
        }catch (SQLException e){
            System.err.println("ERROR2"+e);
        }
    }
    
    public Connection getConnection(){
        return con;
    }
}
