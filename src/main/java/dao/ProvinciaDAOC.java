package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import dataBase.ConexionDBP;
import model.Provincia;

public class ProvinciaDAOC {

	public void listarProvincias() {

	}
	
	public Provincia getProvinciaXID(Integer id) throws SQLException {
		ConexionDBP conDB = new ConexionDBP();
		Connection con= conDB.establecerConexion();
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery("SELECT * FROM provincias WHERE idprovincia = " + id);	
		
		while (rs.next()) {
			
			Provincia provincia = new Provincia(rs.getInt("idprovincia"), rs.getString("nombre"));
			
			return provincia;
		}

		return null;
	}
	
	

}
