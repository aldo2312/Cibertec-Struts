/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.edu.cibertec.action;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import java.util.Map;
import org.apache.struts2.dispatcher.SessionMap;
import pe.edu.cibertec.model.Usuario;

/**
 *
 * @author portatil
 */
public class UsuarioAction extends ActionSupport {
    
    private Usuario usuario;

    public Usuario getUsuario() {
        return usuario;
    }

    public void setUsuario(Usuario usuario) {
        this.usuario = usuario;
    }

  
    public String login() throws Exception {
        
        if(usuario.getUsername().equals("admin") && 
                usuario.getPassword().equals("5927")){
            
            //obtenemos sesion
            Map sesion=ActionContext.getContext().getSession();
            
            //guardamos objetos en sesion
            sesion.put("usuario", getUsuario().getUsername());
            
            addActionMessage(getText("login.ok"));
            
            return SUCCESS;
        }else{
            addActionError(getText("login.error"));
            return LOGIN; 
        }
    }
    
    public String logout() throws Exception {
        
       
            //obtenemos sesion
            Map sesion=ActionContext.getContext().getSession();
            SessionMap sessionMap=(SessionMap)sesion;
            sessionMap.invalidate();
            
            return LOGIN;
    }
     
    public String home(){
        return SUCCESS;
    }
    
    public String inicio(){
        return LOGIN;
    }

    @Override
    public void validate() {
        

        if(getUsuario()!=null){
            
            String usuario= getUsuario().getUsername();
            String password= getUsuario().getPassword();
            
            if(usuario==null || usuario.equals("")){
                addFieldError("usuario.username", "Ingrese usuario");
            }
            if(password==null || password.equals("")){
                addFieldError("usuario.password", "Ingrese password");
            }
        
            //n validaciones
        }
       
    }
    
    
    
    
    
    
}
