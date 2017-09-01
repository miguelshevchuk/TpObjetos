
class LaTrastienda {

	method calcularCapacidad(unaFecha){
		var capacidad
		if(unaFecha.dayOfWeek() == 6){
			capacidad = 700
		}else{
			capacidad = 400
		}
		
		return capacidad
	}

}