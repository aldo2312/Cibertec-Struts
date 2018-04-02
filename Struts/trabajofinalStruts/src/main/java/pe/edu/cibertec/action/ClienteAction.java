/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.edu.cibertec.action;

import com.opensymphony.xwork2.ActionSupport;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import pe.edu.cibertec.dao.DaoCliente;
import pe.edu.cibertec.dao.implement.PersistenciaBDDaoCliente;
import pe.edu.cibertec.model.Cliente;
import pe.edu.cibertec.model.Profesion;


/**
 *
 * @author portatil
 */
public class ClienteAction extends ActionSupport {
    
    private Cliente cliente = new Cliente();
    private Map profesiones;
    private List<Cliente> listaClientes;
    private final DaoCliente daoCliente = new PersistenciaBDDaoCliente();
    private int codCli;      
        
    public int getCodCli() {
        return codCli;
    }

    public void setCodCli(int codCli) {
        this.codCli = codCli;
    }

    public Cliente getCliente() {
        return cliente;
    }

    public void setCliente(Cliente cliente) {
        this.cliente = cliente;
    }   
    
    public Map getProfesiones() {
        return profesiones;
    }

    public void setProfesiones(Map profesiones) {
        this.profesiones = profesiones;
    }
    
    public String inicializar() throws Exception {
        
        //addActionMessage("nuevo.resultado", "");
        //addActionMessage(getText("nuevo.resultado"));
        profesiones = new HashMap();
        profesiones.put("A1", "ARQUITECTURA 1");
        profesiones.put("D1", "DERECHO 1");
        profesiones.put("M1", "MARKETING 1");
        
        return SUCCESS;
       
    }
    //Crear Cliente
    public String registrar() throws Exception {
        String resultado = daoCliente.insertarCliente(cliente);
        if(resultado == null){
            return SUCCESS;
        }else{
             return INPUT;
        }     
    }
    //Editar Cliente
    public String editar(){
        cliente = daoCliente.obtenerCliente(codCli);
        return SUCCESS;
    }
    public String actualizar() throws Exception {
        String resultado = daoCliente.modificarCliente(cliente);
        if(resultado == null){
            return SUCCESS;
        }else{
             return INPUT;
        }     
    }  
    
    //Eliminar Cliente    
    public String eliminar(){
        String resultado = daoCliente.eliminarCliente(codCli);
        if(resultado == null){
            addActionMessage("Se elimino el registro #"+codCli);
            return SUCCESS;
        }else{
            addActionMessage("No se pudo eliminar el registro");
            return SUCCESS;
        }
    }
    
    public List<Cliente> getListaClientes() {
        return listaClientes;
    }

    public void setListaClientes(List<Cliente> listaClientes) {
        this.listaClientes = listaClientes;
    }
    
    public String listarTodo(){
        listaClientes = daoCliente.listarCliente();
        return SUCCESS;
    }  
}

