
object laTrastienda {

	const codigoSabado = 6

	method calcularCapacidad(unaFecha){
		var capacidad
		if(unaFecha.dayOfWeek() == codigoSabado){
			capacidad = 700
		}else{
			capacidad = 400
		}
		
		return capacidad
	}

}