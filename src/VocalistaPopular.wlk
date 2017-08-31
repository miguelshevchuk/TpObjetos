import Integrante.*

class VocalistaPopular inherits Integrante{
		var palabraDeCancion=0
		
		constructor(unaHabilidadSolista, variacionGrupo, palabraCancion){
			habilidadGrupo = unaHabilidadSolista - variacionGrupo
			habilidadSolista= unaHabilidadSolista
			habilidadActual= unaHabilidadSolista
			palabraDeCancion=palabraCancion
			estado="Solista"
		}
		
		method palabraDeCancion()=palabraDeCancion
		method palabraDeCancion(nuevaPalabraDeCancion){
			palabraDeCancion=nuevaPalabraDeCancion
		}
		
		method estaEnGrupo(){ 
			self.estado("Está en un grupo")
			self.habilidadActual(self.habilidadGrupo())
		}
 		method estaSolista(){
 			self.estado("Es solista")
 			self.habilidadActual(self.habilidadSolista())
 		}
	
		override method interpretaBien(unaCancion)=unaCancion.letra().contains(self.palabraDeCancion())
		
	
}