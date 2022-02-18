/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/J2EE/EJB30/StatelessEjbClass.java to edit this template
 */
package Session;

import javax.ejb.Stateless;

/**
 *
 * @author khushpreetkaurgulati
 */
@Stateless
public class SayHello implements SayHelloRemote, SayHelloLocal {

    @Override
    public String HelloWorld(String var) {
        return "Welcome to " + var;

    }

    // Add business logic below. (Right-click in editor and choose
    // "Insert Code > Add Business Method")

    @Override
    public String Hello(String var) {
    return "Hey";
    }
}
