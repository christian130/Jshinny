package modelo;

//STEP 1. Import required packages
import java.sql.*;

public class modelo {
   static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";  
   static final String DB_URL = "jdbc:mysql://localhost/brasilia_diario";
   static final String USER = "root";
   static final String PASS = "";
   Connection conn = null;
   public modelo() {   
   try{
      Class.forName("com.mysql.jdbc.Driver");
      //System.out.println("Connecting to database...");
      conn = DriverManager.getConnection(DB_URL,USER,PASS);
   }catch(SQLException se){
      se.printStackTrace();
   }catch(Exception e){
      e.printStackTrace();
   }
   
}
  public boolean getLogin(String usuario, String clave){
	  Statement stmt = null;
	  try {
		stmt = conn.createStatement();
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		return false;
	}
      String sql;
      sql = "SELECT * FROM `tbl_usuarios` where `tbl_usuarios`.`alias` like '"+usuario.toString()+"' and `tbl_usuarios`.`clave` like '"+clave.toString()+"' ";
      try {
		ResultSet rs = stmt.executeQuery(sql);
		if(rs.next()){
			return true;
			}else{
				System.out.println(sql);
				//System.out.println("no");
			}
	
		
		 //if(stmt!=null)
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
		return false;
	}
	return false;
	  
  }
   public void close(){
	   try {
		conn.close();
		System.out.println("closing connection");
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
   }
}