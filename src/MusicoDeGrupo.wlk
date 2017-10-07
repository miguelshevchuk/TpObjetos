import Musico.*

class MusicoDeGrupo inherits Musico{ 
	
	constructor(unaHabilidadSolista, variacionPorGrupo){
		variacionEnGrupo = variacionPorGrupo
		habilidadSolista = unaHabilidadSolista
	}

	override method decimeTuHabilidad(){
		var habilidadTotal
		if(self.banda() != null){
			habilidadTotal = variacionEnGrupo + habilidadSolista
		}else{
			habilidadTotal = habilidadSolista
		}
		
		return habilidadTotal
	}
	
}