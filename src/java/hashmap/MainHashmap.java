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
public class MainHashmap {
    public static void main(String argv[])
    {
	FamosoHashmap famosos= new FamosoHashmap();
	
	famosos.add("Sebastian Vettel", "1987/07/03", "Profesion");
	famosos.add("Mark Webber", "1976/08/27", "Profesion");
	famosos.add("Jenson Button", "1980/01/19", "Profesion");
	famosos.add("Lewis Hamilton", "1985/01/17", "Profesion");
	famosos.add("Fernando Alonso", "1981/07/29", "Profesion");

	// System.out.println(pilotos.buscaEscuderia("Ferrari"));
	// System.out.println(pilotos.getList());
	// String s="";
	// for (int i=0; i<100000; i++)
	//     s = pilotos.toString();

	// System.out.println(s);

	Collection <Famoso> fs = famosos.getList();


        for (int i = 0; i < 10000000; i++) {
            for (Famoso f : fs) {
                Famoso fn = famosos.busca(f.getApellido());
            }
        }

    }
}
