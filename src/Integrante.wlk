

class Integrante{
	var habilidadSolista
	var habilidadGrupo
	var habilidadActual
	var cantidadQueCobra=0
	
	
	constructor(unaHabilidadSolista, unaHabilidadGrupo){
		habilidadGrupo = unaHabilidadGrupo
		habilidadSolista=unaHabilidadSolista
		habilidadActual=unaHabilidadSolista
	
	}
	
	constructor(){habilidadActual=0}
	
		method cantidadQueCobra()=cantidadQueCobra
		method cantidadQueCobra(nuevaCantidad){
			cantidadQueCobra=nuevaCantidad
		}
		
		method habilidadActual()=habilidadActual
		method habilidadActual(nuevaHabilidadActual){
			habilidadActual=nuevaHabilidadActual
		}
		
		method decimeHabilidad()=habilidadActual
	
		method interpretaBien(unaCancion)=true
		
}
