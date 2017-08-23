package datos;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import modelo.Usuario;
import modelo.Administrador;
import modelo.Moto;

public class Datos {

	// recoge todos los usuarios de la bbdd
	public List<Usuario> getUsuarios(GestionarDatos gd) throws SQLException {
		ResultSet registroRecuperados = gd.getAllUsuarios();
		List<Usuario> listaUsu = new ArrayList<>();
		while (registroRecuperados.next()) {
			int id = registroRecuperados.getInt("idUsuarios");
			String nombre = registroRecuperados.getString("nombre");
			String apellido1 = registroRecuperados.getString("apellido1");
			String apellido2 = registroRecuperados.getString("apellido2");
			String direccion = registroRecuperados.getString("direccion");
			int telefono = registroRecuperados.getInt("telefono");
			String dni = registroRecuperados.getString("dni");
			String email = registroRecuperados.getString("email");
			String password = registroRecuperados.getString("password");
			LocalDate fechaNac = registroRecuperados.getDate("fechaNacimiento").toLocalDate();

			Usuario u = new Usuario(id, nombre, apellido1, apellido2, direccion, telefono, dni, email, password,
					fechaNac);
			listaUsu.add(u);
			u = null;
		}
		return listaUsu;
	}

	// comprueba el dni del usuario
	public boolean comprobarDni(Usuario u, String dni) {
		boolean es;
		if (u.getDni().equals(dni)) {
			es = true;
		} else {
			es = false;
		}
		return es;
	}

	// comprueba el email del usuario
	public boolean comprobarEmail(Usuario u, String email) {
		boolean es;
		if (u.getEmail().equals(email)) {
			es = true;
		} else {
			es = false;
		}
		return es;
	}

	// comprueba la contraseña del usuario
	public boolean comprobarPass(Usuario u, String pass) {
		boolean es;
		if (u.getPassword().equals(pass)) {
			es = true;
		} else {
			es = false;
		}
		return es;
	}

	// comprueba el username del admin
	public boolean comprobarUser(Administrador u, String user) {
		boolean es;
		if (u.getUsuario().equals(user)) {
			es = true;
		} else {
			es = false;
		}
		return es;
	}

	// comprueba la contraseña del admin
	public boolean comprobarPass(Administrador u, String pass) {
		boolean es;
		if (u.getPassword().equals(pass)) {
			es = true;
		} else {
			es = false;
		}
		return es;
	}

	// recoge todas las motos de la bbdd ylas paso a Array
	public List<Moto> getMotos(GestionarDatos gd) throws SQLException {

		ResultSet registroRecuperados = gd.getAllMotos();

		List<Moto> listaMotos = new ArrayList<>();

		while (registroRecuperados.next()) {
			int id = registroRecuperados.getInt("idMoto");
			String marca = registroRecuperados.getString("marca");
			String modelo = registroRecuperados.getString("modelo");
			String color = registroRecuperados.getString("color");
			Double largo = registroRecuperados.getDouble("largo");
			Double ancho = registroRecuperados.getDouble("ancho");
			Double alto = registroRecuperados.getDouble("alto");
			Double peso = registroRecuperados.getDouble("peso");
			Double capacidadDeposito = registroRecuperados.getDouble("capDeposito");
			String modeloMotor = registroRecuperados.getString("modMotor");
			String modeloChasis = registroRecuperados.getString("modChasis");
			String modeloSuspension = registroRecuperados.getString("modSuspension");
			String modeloRuedas = registroRecuperados.getString("modRuedas");
			Double precio = registroRecuperados.getDouble("precio");
			String fotoMoto = registroRecuperados.getString("fotoMoto");

			Moto m = new Moto(id, marca, modelo, color, largo, ancho, alto, peso, capacidadDeposito, modeloMotor,
					modeloChasis, modeloSuspension, modeloRuedas, precio, fotoMoto);
			listaMotos.add(m);

		}
		return listaMotos;
	}

	// llama al metodod getAllMOtos y recoge la MOto con la id que le hemos
	// pasado
	public Moto motoId(GestionarDatos gd, int id) throws SQLException {

		List<Moto> listaMotos = new ArrayList<>();
		Moto m = new Moto();

		listaMotos = getMotos(gd);

		for (Moto i : listaMotos) {
			if (i.getIdMoto() == (id)) {
				m = i;
			}
		}
		return m;
	}

	//devuelve el usuario cullo dni le pasas
	public Usuario usuarioDni(GestionarDatos gd, String dni) throws SQLException {

		List<Usuario> listaUsuarios = new ArrayList<>();
		Usuario u = new Usuario();

		listaUsuarios = getUsuarios(gd);

		for (Usuario i : listaUsuarios) {
			if (i.getDni().equals(dni)) {
				u = i;
			}
		}
		return u;
	}

	//comprueba el administrador
	public boolean comprobarAdministrador(GestionarDatos gd, Administrador ad) throws SQLException {

		boolean enc = false;

		ResultSet registroRecuperados = gd.getAllAdministradores();
		List<Administrador> listaAdministrador = new ArrayList<>();

		while (registroRecuperados.next()) {
			int idAdministrador = registroRecuperados.getInt("idAdministrador");
			String nombre = registroRecuperados.getString("nombre");
			String usuario = registroRecuperados.getString("usuario");
			String password = registroRecuperados.getString("password");

			Administrador adm = new Administrador(idAdministrador, nombre, usuario, password);

			listaAdministrador.add(adm);
			adm = null;
		}

		for (Administrador i : listaAdministrador) {
			if (i.getUsuario().equals(ad.getUsuario()) && i.getPassword().equals(ad.getPassword())) {
				enc = true;
			}
		}
		return true;
	}

	//devuelve todos los admins
	public List<Administrador> getAdmins(GestionarDatos gd) throws SQLException {
		ResultSet registroRecuperados = gd.getAllAdministradores();
		List<Administrador> listaAdmin = new ArrayList<>();
		while (registroRecuperados.next()) {

			int idAdministrador = registroRecuperados.getInt("idAdministrador");
			String nombre = registroRecuperados.getString("nombre");
			String usuario = registroRecuperados.getString("usuario");
			String password = registroRecuperados.getString("password");

			Administrador adm = new Administrador(idAdministrador, nombre, usuario, password);

			listaAdmin.add(adm);
			adm = null;
		}
		return listaAdmin;
	}

}
