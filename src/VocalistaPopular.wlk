import Musico.*
import Cancion.*

class VocalistaPopular inherits Musico{
	var palabraDeCancion
		
	constructor(unaHabilidadSolista, variacionGrupo, palabraCancion){
		variacionEnGrupo = variacionGrupo
		habilidadSolista= unaHabilidadSolista
		palabraDeCancion=palabraCancion
	}
		
	method palabraDeCancion()=palabraDeCancion
	method palabraDeCancion(nuevaPalabraDeCancion){
		palabraDeCancion=nuevaPalabraDeCancion
	}
	
	
	override method interpretaBien(unaCancion){return super(unaCancion) || unaCancion.tenesLaPalabra(self.palabraDeCancion())}
		
	override method decimeTuHabilidad(){
		var habilidadTotal
		if(tocaEnGrupo){
			habilidadTotal = habilidadSolista-variacionEnGrupo
		}else{
			habilidadTotal = habilidadSolista
		}
		
		return habilidadTotal
	}
		
	override method cuantoCobrasLaPresentacion(unaPresentacion){
		if(self.tocasEnLaPresentacion(unaPresentacion)){
			if(self.esUnLugarConcurrido(unaPresentacion)){
				return 500
			}else{
				return 400
			}
		}else{
			return 0
		}
	}
	
	method esUnLugarConcurrido(unaPresentacion) = self.capacidadDeLaPresentacion(unaPresentacion) > 5000
	
	method capacidadDeLaPresentacion(unaPresentacion) = unaPresentacion.teatro().calcularCapacidad(unaPresentacion.fechaPresentacion())
	
}