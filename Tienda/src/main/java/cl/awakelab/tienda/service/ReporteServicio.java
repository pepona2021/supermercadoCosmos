package cl.awakelab.tienda.service;

import java.util.List;

import cl.awakelab.tienda.entity.Reporte;



public interface ReporteServicio {
	 public List<Reporte> obtenerReporte(); 
	public List<Reporte> obtenerReportePorCategoria(int idcategoria);
}
