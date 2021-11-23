package cl.awakelab.tienda.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cl.awakelab.tienda.entity.Categoria;
import cl.awakelab.tienda.entity.CategoriaRepository;




@Service
public class CategoriaServicioIMPL implements CategoriaServicio {

	@Autowired
	CategoriaRepository cr;
	
	@Override
	public List<Categoria> listaCategoria() {
		//return (List<Especialidades>) er.findAll();
		return (List<Categoria>) cr.findByOrderByDescripcion();
	}

}
