/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package hashmap;

import java.util.*;
/**
 *
 * @author z3rh10
 */
public class FamosoHashmap {
    private HashMap<String, Famoso> nombres = new HashMap<String, Famoso>();

    public FamosoHashmap ()
    {
    }

    public void add(String nombre,String nacimiento, String profesion)
    {
	Famoso f = new Famoso(nombre, nacimiento, profesion);
	nombres.put(nombre, f);
    }

    public String toString()
    {
	String ret = "";
	for (Famoso f : nombres.values())
	    ret+=f+"\n";
	
	return ret;
    }

    public Famoso busca (String nombre)
    {
	return nombres.get(nombre);
    }

    public Collection<Famoso> getList()
    {
	return nombres.values();
    }
}
