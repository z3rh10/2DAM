/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hashmap;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author z3rh10
 */
public class FamosoList {
    private List<Famoso> famosos = new ArrayList<Famoso>();

    public FamosoList() 
    {
    }

    public void add(String apellido, String nacimiento, String profesion)
    {
	famosos.add(new Famoso(apellido, nacimiento, profesion));
    }

    public String toString()
    {
	String ret = "";
	for (Famoso p : famosos)
	    ret+=p+"\n";
	
	return ret;
    }

    public Famoso busca(String apellido)
    {
	for (Famoso f : famosos)
	    if (f.getApellido().equals(apellido))
		return f;
	
	return null;
    }

    public List<Famoso> buscaProfesion(String profesion)
    {
	List <Famoso> lista = new ArrayList<Famoso>();

	for (Famoso f : famosos)
	    if (f.getProfesion().equals(profesion))
		lista.add(f);
	
	return lista;
    }
    
    public List<Famoso> getList()
    {
	return famosos;
    }
}


