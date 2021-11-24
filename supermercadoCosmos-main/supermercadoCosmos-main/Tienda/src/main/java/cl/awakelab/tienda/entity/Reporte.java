package cl.awakelab.tienda.entity;

import javax.persistence.Entity;
import javax.persistence.Id;

import org.hibernate.annotations.Immutable;
import org.hibernate.annotations.Subselect;

@Entity
@Immutable
@Subselect("select p.id, p.nombre, p.idcategoria,p.precio,p.descuento,p.url_imagen,c.descripcion from producto p \r\n"
		+ "left join categoria C on c.idcategoria = p.idcategoria")
		
public class Reporte {
	@Id
	private int id;
	private int idcategoria;
	private int precio;
	private int descuento;
	private String descripcion;
	private String nombre;
	private String url_imagen;
	public Reporte() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Reporte(int id, int idcategoria, int precio, int descuento, String descripcion, String nombre,
			String url_imagen) {
		super();
		this.id = id;
		this.idcategoria = idcategoria;
		this.precio = precio;
		this.descuento = descuento;
		this.descripcion = descripcion;
		this.nombre = nombre;
		this.url_imagen = url_imagen;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getIdcategoria() {
		return idcategoria;
	}
	public void setIdcategoria(int idcategoria) {
		this.idcategoria = idcategoria;
	}
	public int getPrecio() {
		return precio;
	}
	public void setPrecio(int precio) {
		this.precio = precio;
	}
	public int getDescuento() {
		return descuento;
	}
	public void setDescuento(int descuento) {
		this.descuento = descuento;
	}
	public String getDescripcion() {
		return descripcion;
	}
	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getUrl_imagen() {
		return url_imagen;
	}
	public void setUrl_imagen(String url_imagen) {
		this.url_imagen = url_imagen;
	}
	@Override
	public String toString() {
		return "Reporte [id=" + id + ", idcategoria=" + idcategoria + ", precio=" + precio + ", descuento=" + descuento
				+ ", descripcion=" + descripcion + ", nombre=" + nombre + ", url_imagen=" + url_imagen + "]";
	}
	
	
}
