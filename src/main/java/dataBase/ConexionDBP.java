package dataBase;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;

public class ConexionDBP {
	private Connection conexion;
	static String user="root";
	static String password="";
	static String server="jdbc:mysql://localhost:3306/cacproyecto";

	public Connection establecerConexion(){
		try{
			Class.forName("com.mysql.jdbc.Driver");
			conexion = DriverManager.getConnection(server,user,password);
			return conexion;

		}
		catch(Exception e){
			System.out.println("Imposible realizar conexi�n con la base de datos");
			e.printStackTrace();
		}
		return conexion;
	}


	public void cerrarConexion(ResultSet rs){
		if(rs !=null){
			try{
				rs.close();
			}
			catch(Exception e){
				System.out.print("No es posible cerrar la conexi�n");
			}
		}
	}

	public void cerrar(java.sql.Statement stmt){
		if(stmt !=null){
			try{
			stmt.close();
		}
		catch(Exception e){}
		}
	}

	public void destruir(){
		if(conexion !=null){
	
		try{
			conexion.close();
		}
		catch(Exception e){}
		}
	}

}