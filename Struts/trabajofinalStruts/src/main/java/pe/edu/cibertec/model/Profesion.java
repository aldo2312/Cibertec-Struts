/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package pe.edu.cibertec.model;

/**
 *
 * @author ajrey
 */
public class Profesion {
    private String profesionCode;
    private String profesionDisplay;

    public String getProfesionCode() {
        return profesionCode;
    }

    public void setProfesionCode(String profesionCode) {
        this.profesionCode = profesionCode;
    }

    public String getProfesionDisplay() {
        return profesionDisplay;
    }

    public void setProfesionDisplay(String profesionDisplay) {
        this.profesionDisplay = profesionDisplay;
    }

    public Profesion(String profesionCode, String profesionDisplay) {
        this.profesionCode = profesionCode;
        this.profesionDisplay = profesionDisplay;
    }
    
    
}
