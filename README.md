# supermercadoCosmos


creado con JPA
@Entity
@Immutable
@Subselect

-------------------------------------------------------------------------------------------------------------------------------------------------------------
@Entity
@Immutable
@Subselect("select p.id, p.nombre, p.idcategoria,c.descripcion from producto p \r\n"
		+ "left join categoria C on c.idcategoria = p.idcategoria")
		
public class Reporte {
	@Id
	private int id;
	private int idcategoria;
	private String descripcion;
	private String nombre;
	public Reporte() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Reporte(int id, int idcategoria, String descripcion, String nombre) {
		super();
		this.id = id;
		this.idcategoria = idcategoria;
		this.descripcion = descripcion;
		this.nombre = nombre;
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
	@Override
	public String toString() {
		return "Reporte [id=" + id + ", idcategoria=" + idcategoria + ", descripcion=" + descripcion + ", nombre="
				+ nombre + "]";
	}
	
	
	
}
