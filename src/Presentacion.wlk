

class Presentacion{
	var participantes=[]
	var capacidad=0
	var fechaPresentacion
	
	
	constructor(unosParticipantes, unaCapacidad, diaPresentacion){
		participantes= unosParticipantes
		capacidad=unaCapacidad
		fechaPresentacion=diaPresentacion
	
	}
	
	method participantes()=participantes
	method participantes(nuevosParticipantes){participantes=nuevosParticipantes}
	
	method capacidad()=capacidad
	method capacidad(nuevaCapacidad){capacidad=nuevaCapacidad}

	method fechaPresentacion()=fechaPresentacion
	method fechaPresentacion(nuevaFecha){
		fechaPresentacion=nuevaFecha
	}
	
	method decimeCosto(){
		return self.participantes().sum({miembro=>miembro.cantidadQueCobra()})
	}
}