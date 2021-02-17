/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hashmap;

/**
 *
 * @author z3rh10
 */
public class Famoso {
    
    private String apellido;
    private String nacimiento;
    private String profesion;

    public Famoso(String apellido, String nacimiento, String profesion) 
    {
	this.apellido=apellido;
	this.nacimiento=nacimiento;
	this.profesion=profesion;
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

    public String toString() 
    {
	return apellido+","+nacimiento+","+profesion;
    }
}
