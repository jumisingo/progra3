/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Modelo.ModeloUser;
import dao.Usuario;

/**
 *
 * @author Familia
 */
public class ControlUser {
    public boolean validate(Usuario u){
        ModeloUser mu = new ModeloUser();
        return mu.auntenticar(u);
    }
}
