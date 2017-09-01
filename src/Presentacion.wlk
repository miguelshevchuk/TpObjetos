

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
}