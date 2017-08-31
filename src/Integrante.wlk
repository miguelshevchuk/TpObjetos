

class Integrante{
	var estado
	var habilidadSolista
	var habilidadGrupo
	var habilidadActual
	var cantidadQueCobra=0
	
	
	

	constructor(){habilidadActual=0} //constructor de la clase musico unico (Alberto)
	
		method estado()=estado
		method estado(nuevoEstado){estado=nuevoEstado}
		
	
		method cantidadQueCobra()=cantidadQueCobra
		method cantidadQueCobra(nuevaCantidad){
			cantidadQueCobra=nuevaCantidad
		}
		
		method habilidadSolista()=habilidadSolista
		method habilidadSolista(nuevaHabilidadSolista){habilidadSolista=nuevaHabilidadSolista}
		
		method habilidadGrupo()=habilidadGrupo
		method habilidadGrupo(nuevaHabilidadGrupo){habilidadGrupo=nuevaHabilidadGrupo}
		
		
		method habilidadActual()=habilidadActual
		method habilidadActual(nuevaHabilidadActual){
			habilidadActual=nuevaHabilidadActual
		}
		
		method decimeHabilidad()=habilidadActual
	
		method interpretaBien(unaCancion)=true
		
}
