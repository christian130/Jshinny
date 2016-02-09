package controlador;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import modelo.modelo;
import vista.VistaMenu;
public class miControlador {
public void login(String usuario, String clave) throws Exception{
	modelo mod = new modelo();
	MessageDigest m = null;
	try {
		m = MessageDigest.getInstance("MD5");
	} catch (NoSuchAlgorithmException e) {
		e.printStackTrace();
	}
    m.update(clave.getBytes(),0,clave.length());
    String clave002 = new BigInteger(1,m.digest()).toString(16);	//aqui creamos nuestra cadena con
    //System.out.println("MD5"+clave002);								//de encriptacion de una								//el algoritmo 
    if (mod.getLogin(usuario,clave002)){		 			//sola via MD5
    	System.out.println("usuario comprobado");
    	//this.setVisible(false);
    	
    	VistaMenu entrada = new VistaMenu();
    	entrada.getFrame().setVisible(true);
    	//VistaMenu entrada = new VistaMenu().iniciar();
    	
    	//entrada.vistaMenu();
    }else if (!(mod.getLogin(usuario,clave002))){
    	throw new Exception();
    }															
    mod.close();
}
public void abrirMenu(){
	//vistaMenu.initialize();
}
}
