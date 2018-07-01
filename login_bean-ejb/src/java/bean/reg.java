/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;

import javax.ejb.Stateful;
import mysql_web.*;
/**
 *
 * @author Dávid
 */
@Stateful
public class reg implements regLocal {

    @Override
    public boolean regisztralas(String nev, String jelszo) {
        return new insert().beszuras(nev, jelszo);
    }

   
}
