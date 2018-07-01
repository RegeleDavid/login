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
public class vizsgalat implements vizsgalatLocal {

    @Override
    public boolean login(String nev, String jelszo) {
        return new select().vizsgalat(nev, jelszo);
    }

    // Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Business Method")
    
    
}
