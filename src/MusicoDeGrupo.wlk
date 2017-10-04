import Musico.*

class MusicoDeGrupo inherits Musico{ 
	
	constructor(unaHabilidadSolista, variacionPorGrupo){
		variacionEnGrupo = variacionPorGrupo
		habilidadSolista = unaHabilidadSolista
	}

	override method decimeTuHabilidad(){
		var habilidadTotal
		if(tocaEnGrupo){
			habilidadTotal = variacionEnGrupo + habilidadSolista
		}else{
			habilidadTotal = habilidadSolista
		}
		
		return habilidadTotal
	}
	
}