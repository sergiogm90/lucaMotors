package servicios;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

import org.apache.tomcat.util.collections.SynchronizedStack;

import com.mysql.jdbc.Connection;
import com.sun.xml.internal.ws.message.DataHandlerAttachment;

import datos.Datos;
import datos.GestionarDatos;
import modelo.Administrador;
import modelo.Moto;
import modelo.Usuario;
import utilidades.LecturaDatos2;

public class servicios {
	
	static GestionarDatos gd = new GestionarDatos("root", "1111");
	static Datos dat = new Datos();

	// comprobar que loguea el usuario
	public static boolean login(String email, String pass) {
		List<Usuario> lista = new ArrayList<>();
		boolean logged = false;
		try {
			lista = dat.getUsuarios(gd);
			for (Usuario i : lista) {
				System.out.println(i);
				if (dat.comprobarPass(i, pass) && dat.comprobarEmail(i, email) == true) {
					logged = true;
					System.out.println(logged);
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return logged;
	}

	//añade usuario
	public static void addUser(Usuario u) {

		List<Usuario> lista = new ArrayList<>();
		try {

			lista = dat.getUsuarios(gd);

		} catch (SQLException e1) {
			e1.printStackTrace();
			System.out.println("main");
		}
		boolean existe = false;
		for (Usuario i : lista) {
			if (dat.comprobarDni(i, u.getDni()) || dat.comprobarEmail(i, u.getEmail()) == true) {
				existe = true;
			}
		}
		if (existe != true) {
			int a;
			try {
				a = gd.addusuario(u);
				if (a != 0) {
					System.out.println("Usuario introducido");
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
		} else {
			System.out.println("El usuario ya existe");
		}
	}

	// añade moto
	public static void addMoto(Moto m) {

		int a;
		try {
			a = gd.addMoto(m);
			if (a != 0) {
				System.out.println("Moto introducido");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}
	
	//borra usuario
public static void deleteUsuario(String dni){
		
		Usuario u = new Usuario();
		try {
			u = dat.usuarioDni(gd, dni);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		gd.deleteUsuario(dni);
	}
	
	//borra moto
	public static void deleteMoto(int id){
		
		Moto m = new Moto();
		try {
			m = dat.motoId(gd, id);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		gd.deleteMoto(m);
	}
	
	//actualiza moto
	public static void updateMoto(Moto m){
		gd.updateMoto(m);
	}
	
	//actualiza usuario
	public static void updateUsuario(Usuario u){
		gd.updateUsuario(u);
	}
	
	//busca moto por id
	public static Moto motoId2(int id){
		Moto m = new Moto();		
			
		try {
			m=dat.motoId(gd, id);		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return m;
	}
	
	//busca usuario por dni
	public static Usuario usuarioDni2(String dni){
		Usuario u = new Usuario();		
			
		try {
			u=dat.usuarioDni(gd, dni);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return u;
	}
	
	
	// LIASTAR MOSTOS
	public static List<Moto> listarMotos(){
		
		List<Moto> listaMotos = new ArrayList<>();
		
		try {
			listaMotos = dat.getMotos(gd);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return listaMotos;
	}
	
	
	//busca usuario por email
	public static Usuario usuarioEmail(String email) {
		List<Usuario> lista = new ArrayList<>();
		Usuario u=null;
		try {
			lista = dat.getUsuarios(gd);
			for (Usuario i : lista) {
				System.out.println(i);
				if (dat.comprobarEmail(i, email) == true) {
					u=i;
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return u;
	}
	
	public static Administrador adminUsername(String user) {
		List<Administrador> lista = new ArrayList<>();
		Administrador u=null;
		try {
			lista = dat.getAdmins(gd);
			for (Administrador i : lista) {
				System.out.println(i);
				if (dat.comprobarUser(i, user) == true) {
					u=i;
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return u;
	}
	
	
	
	/*
	public static Usuario usuarioDni(String dni) {
		List<Usuario> lista = new ArrayList<>();
		Usuario u=null;
		try {
			lista = dat.getUsuarios(gd);
			for (Usuario i : lista) {
				System.out.println(i);
				if (dat.comprobarDni(i, dni) == true) {
					u=i;
				}
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return u;
	}*/
	
	//listar todos los usuarios
	public static List<Usuario> mostrarUsuarios(){
		List<Usuario> l = new ArrayList<>();
		try {
			l=dat.getUsuarios(gd);
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return l;
		
	}
	
	//
	/*public static boolean comprobarAdministrador(Administrador adm){
		boolean bol = false;
		try {
			bol = dat.comprobarAdministrador(gd, adm);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if (bol){
			return true;
		}else{
			return false;
		}
	}*/
	
	//loguea administrador
	public static boolean loginAdmin(String usuario, String pass) {
		List<Administrador> lista = new ArrayList<>();
		boolean logged = false;
		try {
			lista = dat.getAdmins(gd);
			for (Administrador i : lista) {
				System.out.println(i);
				if (dat.comprobarPass(i, pass) && dat.comprobarUser(i, usuario) == true) {
					logged = true;
					System.out.println(logged);
				}
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return logged;
	}

// --------------------------- BUSCADOR -----------------------------
	//-------------- BUSCADOR ---------------------
// 	RECIBIENDO EL NOMBRE DE UNA MOTO, COMPARAMOS EL NOMBRE DE CADA MOTO EN EL ARRAY, Y EL QUE SEA IGUAL LO METE EN UN ARRAY.
//	EJEMPLO. EL USUARIO PULSA EL BOTON YAMAHA, LE MANDAMOS A ESTE METODO EL STRING YAMAHA Y METE EN UN ARRAY TODAS LAS MOTOS CON MARCA=YAMAHA, PARA LUEGO MOSTRARLO EN EL HTML	
	
	public static List<Moto> buscador(String buscador) {
		List<Moto> lista = new ArrayList<>();
		List<Moto> listaBuscador = new ArrayList<>();
		try {
			lista = dat.getMotos(gd);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		for (Moto i:lista){
			if (i.compararModelo(buscador)){
				listaBuscador.add(i);
			}else if (i.compararColor(buscador)){
				listaBuscador.add(i);
			}else if (i.compararMarca(buscador)){
				listaBuscador.add(i);
			}
		}		
		return listaBuscador;
	}
	
// MOSTRAR SUGERENCIAS DE MOTOS PARECIDAS POR PRECIO A LA QUE HA PINCHADO Y ESTA
// VIENDO SUS CARACTERISTICAS
	
	//ORDENA EL ARRAY DE LAS MOTOS POR PRECIO
	public static List<Moto> arrayMotoOrdenados() {
		System.out.println("--- en listarOrdenados");
		List<Moto> sugerencias=null;
		try {
			sugerencias = dat.getMotos(gd);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		Collections.sort(sugerencias, new Comparator() {
			@Override
			public int compare(Object o1, Object o2) {
				Moto m1 = (Moto) o1;
				Moto m2 = (Moto) o2;

				// TODO Auto-generated method stub
				return new Double(m1.getPrecio()).compareTo(new Double(m2.getPrecio()));
			}

		});
		return sugerencias;
	}
	
	//CON LA MOTO QUE TENEMOS EN ELA PAGINA ESPECIFICACIONES, LE MANDO EL OBJETO MOTO Y YA ME COMPRUEBA LA POSICION EN LA QUE ESTA Y ME DEVUELVE
	//LA MOTO DE ANTES Y DESPUES PARA METERLAS EN UN ARRAY Y MOSTRARLAS POR PANTALLA
	public static List<Moto> sugerenciasMoto(Moto m){
		List<Moto> motosOrdenadas = new ArrayList<>();
		List<Moto> motosSugerencias = new ArrayList<>();

		motosOrdenadas = arrayMotoOrdenados();
		for(int i=0; i<motosOrdenadas.size();i++){
			if (m.getPrecio() == motosOrdenadas.get(i).getPrecio()){	
				if(i+1 < motosOrdenadas.size()){
					System.out.println("cojo la de arriba");
					motosSugerencias.add(motosOrdenadas.get(i+1));
				}
				if(((i-1) >= 0)){

					motosSugerencias.add(motosOrdenadas.get(i-1));
				}				
			}
		}
		return motosSugerencias;
	}
	
}
