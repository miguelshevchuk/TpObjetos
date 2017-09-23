import Cancion.*
import HabilidadRequeridaException.*
import CancionInterpretadaException.*
import CompositorException.*
import Condiciones.*

class Presentacion{
	var participantes=[]
	var fechaPresentacion
	var teatro
	var condicionesParaParticipar = []
	
	constructor(diaPresentacion, unTeatro){
		fechaPresentacion=diaPresentacion
		teatro = unTeatro
	}
	
	method teatro()=teatro
	method teatro(unTeatro){teatro=unTeatro}
	
	method condicionesParaParticipar()=condicionesParaParticipar
	method condicionesParaParticipar(nuevasCondiciones){condicionesParaParticipar=nuevasCondiciones}
	
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
		
		self.condicionesParaParticipar().all({condicion=>condicion.ejecutarCondicion(unMusico)})
		self.participantes().add(unMusico)

	}
	
}