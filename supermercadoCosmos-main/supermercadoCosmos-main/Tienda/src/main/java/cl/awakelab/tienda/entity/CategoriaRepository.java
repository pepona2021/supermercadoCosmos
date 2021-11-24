package cl.awakelab.tienda.entity;

import java.util.List;

import org.springframework.data.repository.CrudRepository;



public interface CategoriaRepository extends CrudRepository<Categoria,Integer>{

	public List<Categoria> findByOrderByDescripcion();
}
