/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package jid;

import java.io.File;
/**
 *
 * @author sony
 */
public class JID {

    /**
     * @param args the command line arguments
     */
    
    public static void main(String[] args) {
        String path ="C:/Users/sony/Documents/NetBeansProjects/JID/src/jid/lex.flex";
        generarlexer(path);
    }
    
    public static void generarlexer(String path){
    File file = new File(path);
    jflex.Main.generate(file);
    }
    
}
