import Integrante.*

class MusicoDeGrupo inherits Integrante{ 
	
	constructor(unaHabilidadSolista, variacionPorGrupo){
		habilidadGrupo = unaHabilidadSolista + variacionPorGrupo
		habilidadSolista=unaHabilidadSolista
		habilidadActual=unaHabilidadSolista
		estado="Solista"
	}

		method estaEnGrupo(){ 
			self.estado("Est� en un grupo")
			self.habilidadActual(self.habilidadGrupo())
			self.cantidadQueCobra(50)
		}
 		method estaSolista(){ 
 			self.estado("Es solista")
 			self.habilidadActual(self.habilidadSolista())
 			self.cantidadQueCobra(100)
 		}
	
}