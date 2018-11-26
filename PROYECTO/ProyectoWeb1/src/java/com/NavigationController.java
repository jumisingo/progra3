/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com;

import java.io.Serializable;
import javax.inject.Named;
import javax.enterprise.context.RequestScoped;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.ManagedProperty;

/**
 *
 * @author jvanegas
 */
@ManagedBean(name = "navigationController", eager = true) 
@RequestScoped
public class NavigationController implements Serializable {
   //this managed property will read value from request parameter pageId
   @ManagedProperty(value = "#{param.pageId}")
   private String pageId;

   //condional navigation based on pageId
   //if pageId is 1 show page1.xhtml,
   //if pageId is 2 show page2.xhtml
   //else show home.xhtml
   
   public String showProductos(){
       return
   }
   public String showPage() {
      if(pageId == null) {
         return "home";
      }
      
      if(pageId.equals("productos")) {
         return "productos";
      }else if(pageId.equals("nosotros")) {
         return "nosotros";
      }else if(pageId.equals("contacto")){
          return "contacto";
      }else {
         return "index";
      }
   }
}
