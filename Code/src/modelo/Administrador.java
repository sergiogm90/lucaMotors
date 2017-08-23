package modelo;

public class Administrador {
	int IdAdministrador;
	String nombre;
	String usuario;
	String password;
	
	public Administrador() {
		super();
	}

	
	public Administrador(int idAdministrador, String nombre, String usuario, String password) {
		super();
		IdAdministrador = idAdministrador;
		this.nombre = nombre;
		this.usuario = usuario;
		this.password = password;
	}


	public String getUsuario() {
		return usuario;
	}

	public void setUsuario(String usuario) {
		this.usuario = usuario;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}


	public int getIdAdministrador() {
		return IdAdministrador;
	}


	public void setIdAdministrador(int idAdministrador) {
		IdAdministrador = idAdministrador;
	}


	public String getNombre() {
		return nombre;
	}


	public void setNombre(String nombre) {
		this.nombre = nombre;
	}


	@Override
	public String toString() {
		return "Administrador [IdAdministrador=" + IdAdministrador + ", nombre=" + nombre + ", usuario=" + usuario
				+ ", password=" + password + "]";
	}
	
	
	
}
