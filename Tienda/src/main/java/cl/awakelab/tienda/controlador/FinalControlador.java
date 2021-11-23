package cl.awakelab.tienda.controlador;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import cl.awakelab.tienda.entity.Categoria;
import cl.awakelab.tienda.entity.Reporte;
import cl.awakelab.tienda.service.CategoriaServicio;
import cl.awakelab.tienda.service.ReporteServicio;

@Controller
public class FinalControlador {
	
    @Autowired
	CategoriaServicio cs;
	
    @Autowired
	ReporteServicio rs;
	
    
    @RequestMapping(value="/",method=RequestMethod.GET)
    public String verportal(Model model) {
    	List<Categoria> listacategoria = cs.listaCategoria();
    	List<Reporte> listareporte = rs.obtenerReporte();
    	model.addAttribute("lcategoria",listacategoria);
    	model.addAttribute("lreporte",listareporte);
    	return "sitioinicio";
    }	
    	
    @RequestMapping(value="/verlistado",method=RequestMethod.POST)
    public String verReporte(Model model,
    		@RequestParam("slcategoria")int idcategoria) {	
   List<Categoria> listacategoria = cs.listaCategoria();
   List<Reporte> listareporte = rs.obtenerReportePorCategoria(idcategoria);
   model.addAttribute("lcategoria",listacategoria);
   model.addAttribute("lreporte",listareporte);
   return "sitioinicio";
    }
	
}
