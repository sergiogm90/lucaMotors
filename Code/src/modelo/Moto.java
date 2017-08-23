package modelo;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import utilidades.LecturaDatos2;

public class Moto {
	
	private int idMoto;
	private String marca;
	private String modelo;
	private String color;
	private double largo;
	private double ancho;
	private double alto;
	private double peso;
	private double capacidadDeposito;
	private String modeloMotor;
	private String modeloChasis;
	private String modeloSuspension;
	private String modeloRuedas;
	private double precio;
	private String fotoMoto;
	
	public Moto() {
		super();
	}

	public Moto(String marca, String modelo, String color, double largo, double ancho, double alto, double peso,
			double capacidadDeposito, String modeloMotor, String modeloChasis, String modeloSuspension,
			String modeloRuedas, double precio, String fotoMoto) {
		super();
		this.marca = marca;
		this.modelo = modelo;
		this.color = color;
		this.largo = largo;
		this.ancho = ancho;
		this.alto = alto;
		this.peso = peso;
		this.capacidadDeposito = capacidadDeposito;
		this.modeloMotor = modeloMotor;
		this.modeloChasis = modeloChasis;
		this.modeloSuspension = modeloSuspension;
		this.modeloRuedas = modeloRuedas;
		this.precio = precio;
		this.fotoMoto = fotoMoto;
	}

	
	
	
	
	public Moto(int idMoto, String marca, String modelo, String color, double largo, double ancho, double alto,
			double peso, double capacidadDeposito, String modeloMotor, String modeloChasis, String modeloSuspension,
			String modeloRuedas, double precio, String fotoMoto) {
		super();
		this.idMoto = idMoto;
		this.marca = marca;
		this.modelo = modelo;
		this.color = color;
		this.largo = largo;
		this.ancho = ancho;
		this.alto = alto;
		this.peso = peso;
		this.capacidadDeposito = capacidadDeposito;
		this.modeloMotor = modeloMotor;
		this.modeloChasis = modeloChasis;
		this.modeloSuspension = modeloSuspension;
		this.modeloRuedas = modeloRuedas;
		this.precio = precio;
		this.fotoMoto = fotoMoto;
	}

	public int getIdMoto() {
		return idMoto;
	}

	public void setIdMoto(int idMoto) {
		this.idMoto = idMoto;
	}

	public String getMarca() {
		return marca;
	}

	public void setMarca(String marca) {
		this.marca = marca;
	}

	public String getModelo() {
		return modelo;
	}

	
	
	
	public void setModelo(String modelo) {
		this.modelo = modelo;
	}

	public String getColor() {
		return color;
	}

	public void setColor(String color) {
		this.color = color;
	}

	public double getLargo() {
		return largo;
	}

	public void setLargo(double largo) {
		this.largo = largo;
	}

	public double getAncho() {
		return ancho;
	}

	public void setAncho(double ancho) {
		this.ancho = ancho;
	}

	public double getAlto() {
		return alto;
	}

	public void setAlto(double alto) {
		this.alto = alto;
	}

	public double getPeso() {
		return peso;
	}

	public void setPeso(double peso) {
		this.peso = peso;
	}

	public double getCapacidadDeposito() {
		return capacidadDeposito;
	}

	public void setCapacidadDeposito(double capacidadDeposito) {
		this.capacidadDeposito = capacidadDeposito;
	}

	public String getModeloMotor() {
		return modeloMotor;
	}

	public void setModeloMotor(String modeloMotor) {
		this.modeloMotor = modeloMotor;
	}

	public String getModeloChasis() {
		return modeloChasis;
	}

	public void setModeloChasis(String modeloChasis) {
		this.modeloChasis = modeloChasis;
	}

	public String getModeloSuspension() {
		return modeloSuspension;
	}

	public void setModeloSuspension(String modeloSuspension) {
		this.modeloSuspension = modeloSuspension;
	}

	public String getModeloRuedas() {
		return modeloRuedas;
	}

	public void setModeloRuedas(String modeloRuedas) {
		this.modeloRuedas = modeloRuedas;
	}

	public double getPrecio() {
		return precio;
	}

	public void setPrecio(double precio) {
		this.precio = precio;
	}
	
	public String getFotoMoto() {
		return fotoMoto;
	}

	public void setFotoMoto(String fotoMoto) {
		this.fotoMoto = fotoMoto;
	}

	@Override
	public String toString() {
		return "Moto [idMoto=" + idMoto + ", marca=" + marca + ", modelo=" + modelo + ", color=" + color + ", largo="
				+ largo + ", ancho=" + ancho + ", alto=" + alto + ", peso=" + peso + ", capacidadDeposito="
				+ capacidadDeposito + ", modeloMotor=" + modeloMotor + ", modeloChasis=" + modeloChasis
				+ ", modeloSuspension=" + modeloSuspension + ", modeloRuedas=" + modeloRuedas + ", precio=" + precio
				+ ", fotoMoto=" + fotoMoto + "]";
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		long temp;
		temp = Double.doubleToLongBits(precio);
		result = prime * result + (int) (temp ^ (temp >>> 32));
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Moto other = (Moto) obj;
		if (Double.doubleToLongBits(precio) != Double.doubleToLongBits(other.precio))
			return false;
		return true;
	}
	
	
	
	public boolean compararMarca(String s){
		String primeraLetra=s.substring(0,1);
		String restoPalabra=s.substring(1);
		s=primeraLetra+restoPalabra;
    	boolean a=false;		
			for(int j=0;j<this.getMarca().length()-s.length()+1;j++){
				String aux = this.getMarca().substring(j, j+s.length());
				if(aux.equalsIgnoreCase(s)){
					a=true;
					break;
				}
			}
    	return a;
    }
	
	public boolean compararModelo(String s){
		
    	boolean a=false;		
			for(int j=0;j<this.getModelo().length()-s.length()+1;j++){
				String aux = this.getModelo().substring(j, j+s.length());
				if(aux.equalsIgnoreCase(s)){
					a=true;
					break;
				}
			}
    	return a;
    }

	public boolean compararColor(String s){
	
	boolean a=false;		
		for(int j=0;j<this.getColor().length()-s.length()+1;j++){
			String aux = this.getColor().substring(j, j+s.length());
			if(aux.equalsIgnoreCase(s)){
				a=true;
				break;
			}
		}
	return a;
	}
	

	
}
