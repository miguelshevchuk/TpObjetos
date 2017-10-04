
object prixDami {

	method calcularCapacidad(unaFecha) = 150

}

object laCueva {

	method calcularCapacidad(unaFecha) = 14000

}

object lunaPark {

	method calcularCapacidad(unaFecha) = 9290

}

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