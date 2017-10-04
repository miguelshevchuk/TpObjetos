import Musico.*
import Cancion.*

class VocalistaPopular inherits Musico{
		
	constructor(unaHabilidadSolista, variacionGrupo){
		variacionEnGrupo = variacionGrupo
		habilidadSolista= unaHabilidadSolista
	}
		
	
		
	override method decimeTuHabilidad(){
		var habilidadTotal
		if(tocaEnGrupo){
			habilidadTotal = habilidadSolista-variacionEnGrupo
		}else{
			habilidadTotal = habilidadSolista
		}
		
		return habilidadTotal
	}
		
}