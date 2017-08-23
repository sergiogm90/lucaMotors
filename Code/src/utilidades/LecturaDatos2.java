package utilidades;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStreamReader;



public class LecturaDatos2 {

	FileReader fr = null;
	public static BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
	
//STRING
	public static String leerString(){
		String letras="";	
		 try {
			 letras=br.readLine();			
		} catch (IOException e) {			
			e.printStackTrace();
		}
		 return letras;
	}
	
	public static String leerString(String msj){
		System.out.println(msj);
		return leerString();
	}
	
	
//ENTEROS
	public static int leerInt() {
		String number;
		int num=0;
		 try {
			number=br.readLine();
			num=Integer.parseInt(number);			
		} catch (IOException e) {			
			e.printStackTrace();
		}
		 return num;
    }
	public static int leerInt(String mensaje){
		System.out.println(mensaje);
		return leerInt();
	}
	
	
//DOUBLE	
	public static double leerDouble(){
		double numero=0;
		String num;
		 try {
			num=br.readLine();
			numero=Double.parseDouble(num);			
		} catch (IOException e) {			
			e.printStackTrace();
		}
		 return numero;
	}
	public static double leerDouble(String msj){
		System.out.println(msj);
		return leerDouble();
	}

	

}
