/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com;

import javax.inject.Named;
import javax.enterprise.context.Dependent;
import javax.faces.application.FacesMessage;
import javax.faces.bean.ManagedBean;
import javax.faces.context.FacesContext;
import dao.Usuario;
/**
 *
 * @author Familia
 */
@Named(value = "commandView")
@Dependent
@ManagedBean
public class CommandView {

    public void execute() {
        FacesContext.getCurrentInstance().addMessage(null, new FacesMessage(FacesMessage.SEVERITY_INFO, "Bienvenido",  "${usuario.nombreUsuario}"));
    }
    public CommandView() {
    }
    
}
