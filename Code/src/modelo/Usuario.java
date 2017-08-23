package modelo;
import java.time.LocalDate;

import datos.GestionarDatos;
import utilidades.LecturaDatos2;

public class Usuario {

	private int idUsuarios;
	private String nombre;
	private String apellido1;
	private String apellido2;
	private String direccion;
	private int telefono;
	private String dni;
	private String email;
	private String password;
	private LocalDate fechaNac;
	
	public Usuario() {
		super();
	}
	
	
	public Usuario(int idUsuarios, String nombre, String apellido1, String apellido2, String direccion, int telefono,
			String dni, String email, String password, LocalDate fechaNac) {
		super();
		this.idUsuarios = idUsuarios;
		this.nombre = nombre;
		this.apellido1 = apellido1;
		this.apellido2 = apellido2;
		this.direccion = direccion;
		this.telefono = telefono;
		this.dni = dni;
		this.email = email;
		this.password = password;
		this.fechaNac = fechaNac;
	}


	public Usuario(int idUsuarios, String nombre, String apellido1, String apellido2, String direccion, int telefono,
			String dni, String email, String password, int day, int month, int year) {
		super();
		this.idUsuarios = idUsuarios;
		this.nombre = nombre;
		this.apellido1 = apellido1;
		this.apellido2 = apellido2;
		this.direccion = direccion;
		this.telefono = telefono;
		this.dni = dni;
		this.email = email;
		this.password = password;
		LocalDate fecha=LocalDate.of(year, month, day);
		this.fechaNac = fecha;
	}



	public Usuario(String dni, String nombre, String apellido1, String apellido2, String direccion, int telefono,
			String email, String password, int day, int month, int year) {
		super();
		this.nombre = nombre;
		this.apellido1 = apellido1;
		this.apellido2 = apellido2;
		this.direccion = direccion;
		this.telefono = telefono;
		this.dni = dni;
		this.email = email;
		this.password = password;
		LocalDate fecha=LocalDate.of(year, month, day);
		this.fechaNac = fecha;
	}
	

	public String getNombre() {
		return nombre;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public String getApellido1() {
		return apellido1;
	}

	public void setApellido1(String apellido1) {
		this.apellido1 = apellido1;
	}

	public String getApellido2() {
		return apellido2;
	}

	public void setApellido2(String apellido2) {
		this.apellido2 = apellido2;
	}

	public String getDireccion() {
		return direccion;
	}

	public void setDireccion(String direccion) {
		this.direccion = direccion;
	}

	public int getTelefono() {
		return telefono;
	}

	public void setTelefono(int telefono) {
		this.telefono = telefono;
	}

	public String getDni() {
		return dni;
	}

	public void setDni(String dni) {
		this.dni = dni;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public LocalDate getFechaNac() {
		return fechaNac;
	}

	public void setFechaNac(LocalDate fechaNac) {
		this.fechaNac = fechaNac;
	}

	
	
	
	
	public int getIdUsuarios() {
		return idUsuarios;
	}


	public void setIdUsuarios(int idUsuarios) {
		this.idUsuarios = idUsuarios;
	}


	
	
	@Override
	public String toString() {
		return "Usuario [idUsuarios=" + idUsuarios + ", nombre=" + nombre + ", apellido1=" + apellido1 + ", apellido2="
				+ apellido2 + ", direccion=" + direccion + ", telefono=" + telefono + ", dni=" + dni + ", email="
				+ email + ", password=" + password + ", fechaNac=" + fechaNac + "]";
	}
	
	
	public void  crearUser(){
		Usuario u = new Usuario();	
		
		u.setDni(LecturaDatos2.leerString("Introduzca el dni"));	
		u.setNombre(LecturaDatos2.leerString("Introduce el nombre"));
		u.setApellido1(LecturaDatos2.leerString("Introduce el apellido1"));
		u.setApellido2(LecturaDatos2.leerString("Introduce el ape3llido2"));
		u.setDireccion(LecturaDatos2.leerString("Introduce el direccion"));
		u.setTelefono(LecturaDatos2.leerInt("Introduce el telefono"));
		u.setEmail(LecturaDatos2.leerString("Introduce el email"));
		u.setPassword(LecturaDatos2.leerString("Introduce el password"));
		LocalDate fecha=LocalDate.of(LecturaDatos2.leerInt("Introduce el año"), LecturaDatos2.leerInt("Introduce el mes"), LecturaDatos2.leerInt("Introduce el dia"));
		u.setFechaNac(fecha); 
		
	}
}
