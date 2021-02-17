/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hashmap;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.Id;

/**
 *
 * @author z3rh10
 */
@Entity
public class FamosoBean implements Serializable{
    
    @Id
    private String apellido;
    private String nacimiento;
    private String profesion;
    
    private String edad;
    private String signo;

    public FamosoBean() 
    {
	
    }
    
    public FamosoBean(String apellido, String nacimiento, String profesion, String edad, String signo) 
    {
	this.apellido=apellido;
	this.nacimiento=nacimiento;
	this.profesion=profesion;
        this.edad = edad;
        this.signo = signo;
    }

    public String getApellido()
    {
	return apellido;
    }

    public String getNacimiento()
    {
	return nacimiento;
    }
    
    public String getProfesion()
    {
	return profesion;
    }
    public String getEdad()
    {
	return edad;
    }
    public String getSigno()
    {
	return signo;
    }
    

    public String toString() 
    {
	return apellido+","+nacimiento+","+profesion+","+edad+","+signo;
    }
}
