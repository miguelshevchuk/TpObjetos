import Cancion.*
import HabilidadRequeridaException.*
import CancionInterpretadaException.*
import CompositorException.*

class Presentacion{
	var participantes=[]
	var fechaPresentacion
	var teatro
	
	constructor(diaPresentacion, unTeatro){
		fechaPresentacion=diaPresentacion
		teatro = unTeatro
	}
	
	method teatro()=teatro
	method teatro(unTeatro){teatro=unTeatro}
	
	method participantes()=participantes
	method participantes(nuevosParticipantes){participantes=nuevosParticipantes}
	
	method fechaPresentacion()=fechaPresentacion
	method fechaPresentacion(nuevaFecha){
		fechaPresentacion=nuevaFecha
	}
	
	method decimeCostoTotal(){
		return self.participantes().sum({miembro=>miembro.cuantoCobrasLaPresentacion(self)})
	}
	
	method agregarMusico(unMusico){
		if(not(self.verificarCondicionDeHabilidad(unMusico))){
			throw new HabilidadRequeridaException("El musico no cumple con el minimo de habilidad requerido")
		}
			
		if(not(self.verificarCondicionDeCancion(unMusico))){
			throw new CancionInterpretadaException("El musico no interpreta bien la cancion requerida")
		}
		
		if(not(self.verificarCondicionCompositor(unMusico))){
			throw new CompositorException("El musico no compuso ninguna cancion")
		}
		self.participantes().add(unMusico)

	}
	
	method verificarCondicionDeHabilidad(unMusico) = unMusico.decimeTuHabilidad() > 70
	
	method verificarCondicionDeCancion(unMusico){
		
		var alicia = new Cancion("Canción de Alicia en el país")
		alicia.letra("Quién sabe Alicia, este país no estuvo hecho porque sí. Te vas a ir, vas a salir pero te quedas, ¿dónde más vas a ir? Y es que aquí, sabes el trabalenguas, trabalenguas, el asesino te asesina, y es mucho para ti. Se acabó ese juego que te hacía feliz.")
		alicia.duracion(510)
		
		return unMusico.interpretaBien(alicia)
	}
	
	method verificarCondicionCompositor(unMusico) = unMusico.albumesQueEdito().size() > 0
	
}