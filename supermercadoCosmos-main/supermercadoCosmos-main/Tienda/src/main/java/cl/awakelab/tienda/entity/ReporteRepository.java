package cl.awakelab.tienda.entity;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;





@Repository
public interface ReporteRepository extends CrudRepository<Reporte,Integer>{
	public List<Reporte> findAllByIdcategoria(int idcategoria);
	
	
	  public List<Reporte> findAllByIdcategoriaOrderByNombreAsc(int idcategoria); 

	  public List<Reporte> findByOrderByNombreAsc();
	 
	
	
}
