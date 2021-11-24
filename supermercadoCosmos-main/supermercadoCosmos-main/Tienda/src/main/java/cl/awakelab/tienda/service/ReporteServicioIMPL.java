package cl.awakelab.tienda.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cl.awakelab.tienda.entity.Reporte;
import cl.awakelab.tienda.entity.ReporteRepository;

@Service
public class ReporteServicioIMPL implements ReporteServicio {

	@Autowired
	ReporteRepository rr;
	
	
	  @Override public List<Reporte> obtenerReporte(){ 
		  return (List<Reporte>) rr.findByOrderByNombreAsc();
	  
	  }
	 
	@Override
	public List<Reporte> obtenerReportePorCategoria(int idcategoria){
		return (List<Reporte>) rr.findAllByIdcategoriaOrderByNombreAsc(idcategoria);
	}
	
}
