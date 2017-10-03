import Musico.*

class MusicoDeGrupo inherits Musico{ 
	
	var tiempoNecesarioParaInterpretarBienUnaCancion
	
	constructor(unaHabilidadSolista, variacionPorGrupo){
		variacionEnGrupo = variacionPorGrupo
		habilidadSolista = unaHabilidadSolista
	}

	method tiempoNecesarioParaInterpretarBienUnaCancion() = tiempoNecesarioParaInterpretarBienUnaCancion
	method tiempoNecesarioParaInterpretarBienUnaCancion(unNuevoTiempo) {
		tiempoNecesarioParaInterpretarBienUnaCancion = unNuevoTiempo
	}

	method cumpleCondicionDeTiempo(unaCancion) = unaCancion.duracion() > tiempoNecesarioParaInterpretarBienUnaCancion

	override method interpretaBien(unaCancion) {return super(unaCancion) || self.cumpleCondicionDeTiempo(unaCancion)}

	override method decimeTuHabilidad(){
		var habilidadTotal
		if(tocaEnGrupo){
			habilidadTotal = variacionEnGrupo + habilidadSolista
		}else{
			habilidadTotal = habilidadSolista
		}
		
		return habilidadTotal
	}
	
	override method cuantoCobrasLaPresentacion(unaPresentacion){
		if(self.tocasEnLaPresentacion(unaPresentacion)){
			if(self.tocasVosSolo(unaPresentacion)){
				return 100
			}else{
				return 50
			}
		}else{
			return 0
		}
	}
	
	method tocasVosSolo(unaPresentacion) = unaPresentacion.participantes().size() == 1
	
}