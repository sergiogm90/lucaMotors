package datos;

import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import modelo.Administrador;
import modelo.Moto;

//import org.apache.tomcat.jni.Local;

import modelo.Usuario;

public class GestionarDatos {

	private Connection conn;
	
// constrtuctor para crear la conexion
	public GestionarDatos(String dbUser, String dbPassword) {

		String driverClassName = "com.mysql.jdbc.Driver";
		String driverUrl = "jdbc:mysql://localhost/proyecto1bbdd";

		try {
			Class.forName(driverClassName);
			conn = DriverManager.getConnection(driverUrl, dbUser, dbPassword);
			System.out.println("-- conexion creada");
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}

	}
	//cierra la base de datos
	public void cerrarBBDD() {

		try {
			ResultSet resultados = getAllUsuarios();
			Statement stmt = conn.createStatement();
			if (resultados != null)
				resultados.close();
			if (stmt != null)
				stmt.close();
			if (conn != null)
				conn.close();
			System.out.println("Ha cerrado la bbdd");

		} catch (SQLException e) {
			e.printStackTrace();

		}

	}
//--------------------------------------------------USUARIOS------------------
	
	//Recoge todos los usuarios de la bd
	public ResultSet getAllUsuarios() {
		ResultSet resultados = null;
		Statement stmt = null;
		String query;

		query = "select * from usuario";
		try {
			stmt = conn.createStatement();
			resultados = stmt.executeQuery(query);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return resultados;
	}

	
	//añade un usuario
	public int addusuario(Usuario e) throws SQLException {
		String query = "insert into usuario (dni, nombre, apellido1, apellido2, direccion, telefono, email, password, fechaNacimiento) values (?,?,?,?,?,?,?,?,?)";

		PreparedStatement stmt;

		stmt = conn.prepareStatement(query);

		stmt.setString(1, e.getDni());
		stmt.setString(2, e.getNombre());
		stmt.setString(3, e.getApellido1());
		stmt.setString(4, e.getApellido2());
		stmt.setString(5, e.getDireccion());
		stmt.setInt(6, e.getTelefono());
		stmt.setString(7, e.getEmail());
		stmt.setString(8, e.getPassword());
		// paso la fecha LocalDate a Date para meterlo en la bbdd
		Date date = Date.valueOf(e.getFechaNac());
		stmt.setDate(9, date);

		int registrosInsertados = stmt.executeUpdate();
		return registrosInsertados;

	}

	// ELIMINA USUARIO
	public void deleteUsuario(String dni) {
		Statement stmt = null;
		try {
			conn.setAutoCommit(false);
			stmt = conn.createStatement();

			stmt.executeUpdate("delete from usuario where (`dni` ='" + dni + "')");

			stmt.executeBatch();
			System.out.println(stmt);
			this.conn.commit();

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	public Connection getConn() {
		return conn;
	}
	public void setConn(Connection conn) {
		this.conn = conn;
	}
	
	
	//	ACTUALIZA USUARIO
	public void updateUsuario(Usuario u){
		try {
			PreparedStatement stmt;
			stmt =conn.prepareStatement("update usuario set dni=?, nombre=?, apellido1=?, apellido2=?, direccion=?, telefono=?, email=?, password=?, fechaNacimiento=? where idUsuarios= ?");
				
				stmt.setString(1, u.getDni());
				stmt.setString(2, u.getNombre());
				stmt.setString(3, u.getApellido1());
				stmt.setString(4, u.getApellido2());
				stmt.setString(5, u.getDireccion());
				stmt.setInt(6, u.getTelefono());
				stmt.setString(7, u.getEmail());
				stmt.setString(8, u.getPassword());
				Date date = Date.valueOf(u.getFechaNac());
				stmt.setDate(9, date);	
				stmt.setInt(10, u.getIdUsuarios());
				
			stmt.executeUpdate();
			//this.conn.commit();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	// -------------------------	GESTIONA DATOS ADMINISTRADOR     -------------------------------------------------
//AÑADE MOTO
	public int addMoto(Moto m) throws SQLException {
		String query = "insert into moto (marca, modelo, color, largo, ancho, alto, peso, capDeposito, modMotor, modChasis, modSuspension, modRuedas, precio, fotoMoto) "
				+ "values (?,?,?,?,?,?,?,?,?,?,?,?,?, ?)";
				
		PreparedStatement stmt;
		stmt = conn.prepareStatement(query);
		
		stmt.setString(1, m.getMarca());
		stmt.setString(2, m.getModelo());
		stmt.setString(3, m.getColor());
		stmt.setDouble(4, m.getLargo());
		stmt.setDouble(5, m.getAncho());
		stmt.setDouble(6, m.getAlto());
		stmt.setDouble(7, m.getPeso());
		stmt.setDouble(8, m.getCapacidadDeposito());
		stmt.setString(9, m.getModeloMotor());
		stmt.setString(10, m.getModeloChasis());
		stmt.setString(11, m.getModeloSuspension());
		stmt.setString(12, m.getModeloRuedas());
		stmt.setDouble(13, m.getPrecio());
		stmt.setString(14, m.getFotoMoto());
			
		int registrosInsertados = stmt.executeUpdate();
		return registrosInsertados;
	}
		
// RECOGE TODAS LAS MOTOS DE LA BBDD
	public ResultSet getAllMotos() {
		ResultSet resultados = null;
		Statement stmt = null;
		String query;
		
		query = "select * from moto";
		try {
			stmt = conn.createStatement();
			resultados = stmt.executeQuery(query);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return resultados;
	}
		
// ELIMINA MOTO
	public void deleteMoto(Moto m) {
		Statement stmt = null;
		try {
			conn.setAutoCommit(false);
			stmt = conn.createStatement();
			stmt.executeUpdate("delete from moto where (`idMoto` ='" + m.getIdMoto() + "')");
			stmt.executeBatch();
			this.conn.commit();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}	
		
// ACTUALIZA MOTO
	public void updateMoto(Moto m){
		try {
			PreparedStatement stmt;
			stmt =conn.prepareStatement("update moto set marca=?, modelo=?, color=?, largo=?, ancho=?, alto=?, peso=?, capDeposito=?, modMotor=?, modChasis=?, "
					+ "modSuspension=?, modRuedas=?, precio=?, fotoMoto=? where idMoto= ?");
					
				stmt.setString(1, m.getMarca());
				stmt.setString(2, m.getModelo());
				stmt.setString(3, m.getColor());
				stmt.setDouble(4, m.getLargo());
				stmt.setDouble(5, m.getAncho());
				stmt.setDouble(6, m.getAlto());
				stmt.setDouble(7, m.getPeso());
				stmt.setDouble(8, m.getCapacidadDeposito());
				stmt.setString(9, m.getModeloMotor());
				stmt.setString(10, m.getModeloChasis());
				stmt.setString(11, m.getModeloSuspension());
				stmt.setString(12, m.getModeloRuedas());
				stmt.setDouble(13, m.getPrecio());
				stmt.setString(14, m.getFotoMoto());	
				stmt.setInt(15, m.getIdMoto());	
				
				
				stmt.executeUpdate();
			//stmt.executeBatch();
			//this.conn.commit();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
		
	
	
	
	
// ----------------------- AMINISTRADOR ------------------
	public ResultSet getAllAdministradores() {
		ResultSet resultados = null;
		Statement stmt = null;
		String query;

		query = "select * from administrador";
		try {
			stmt = conn.createStatement();
			resultados = stmt.executeQuery(query);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return resultados;
	} 
	
	
	
}
