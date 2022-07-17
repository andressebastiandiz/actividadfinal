package dao;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import dataBase.ConexionDBP;
import model.Usuario;

public class UsuarioDAOC {
	
	public Boolean validarUsuYPass(String usu, String pass) throws SQLException {
		ConexionDBP conexionDBP = new ConexionDBP();
		Connection conn= conexionDBP.establecerConexion();
		Statement st= conn.createStatement();
		
		ResultSet rs = st.executeQuery("SELECT * FROM usuarios WHERE usuario='"+ usu +"' and clave='"+ pass + "'");
		
		return rs.next();
		
	}
	
	public Boolean guardarUsuario(String usu, String pass) throws SQLException {
		ConexionDBP conexionDBP = new ConexionDBP();
		Connection conn= conexionDBP.establecerConexion();
		Statement st= conn.createStatement();
		
		String sql = new String("INSERT INTO usuarios (usuario, clave) VALUES ('" + usu + "','" + pass + "')");		
		Integer insertOk = st.executeUpdate(sql);
		
		return insertOk >= 1;
		
	}
	
	public List<Usuario> listarUsuarios() throws SQLException {
		ConexionDBP conexionDBP = new ConexionDBP();
		Connection conn= conexionDBP.establecerConexion();
		Statement st= conn.createStatement();

		ResultSet rs = st.executeQuery("SELECT * FROM usuarios");
		
		List<Usuario> listUsu = new ArrayList<Usuario>();
		while (rs.next()) {
			Usuario usu = new Usuario(rs.getInt("idusuario"), rs.getString("usuario"), rs.getString("clave"));
			
			listUsu.add(usu);
		}
		
		
		return listUsu;
	}	
	

}
