package controlador;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

import modelo.modelo;
public class miControlador {
public void login(String usuario, String clave){
	modelo mod = new modelo();
	
		
    MessageDigest m = null;
	try {
		m = MessageDigest.getInstance("MD5");
	} catch (NoSuchAlgorithmException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
    m.update(clave.getBytes(),0,clave.length());
    String clave002 = m.digest().toString();
    //System.out.println(clave002);
    if (mod.getLogin(usuario,clave002)){
    	System.out.println("usuario comprobado");
    }
    mod.close();
   //System.out.println("MD5: "+new BigInteger(1,m.digest()).toString(16));
	//System.out.println( DigestUtils.md5Hex( Url ) );
}
}
