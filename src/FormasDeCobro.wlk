

class CobroPorCantidadDeArtistas {


	method cobrar(unShow, unMusico){
		
		if(unShow.cantaSolo(unMusico)){
			return unMusico.precio()
		}else{
			return unMusico.precio()/2
		}
		
	}

}

class CobroPorCapacidad {

	var capacidadMinimaDePersonas

	constructor(unaCapacidad){
		self.capacidadMinimaDePersonas(unaCapacidad)
	}

	method capacidadMinimaDePersonas() = capacidadMinimaDePersonas
	method capacidadMinimaDePersonas(unaCapacidad){
		capacidadMinimaDePersonas = unaCapacidad
	}

	method cobrar(unShow, unMusico){
		
		if(unShow.laCapacidadEsMayorA(self.capacidadMinimaDePersonas())){
			return unMusico.precio()
		}else{
			return unMusico.precio()-100
		}
		
	}

}

class CobroPorExpectativaInflacionaria {

	var fechaMaxima
	var porcentajePostFecha

	constructor(unaFecha, unPorcentaje){
		self.fechaMaxima(unaFecha)
		self.porcentajePostFecha(unPorcentaje)
	}

	method fechaMaxima() = fechaMaxima
	method fechaMaxima(unaFecha){
		fechaMaxima = unaFecha
	}

	method porcentajePostFecha() = porcentajePostFecha
	method porcentajePostFecha(unPorcentaje){
		porcentajePostFecha = unPorcentaje
	}

	method cobrar(unShow, unMusico){
		
		if(unShow.laFechaEsAnteriorA(self.fechaMaxima())){
			return unMusico.precio()
		}else{
			return unMusico.precio()*( 1 + self.porcentajePostFecha()/100)
		}
		
	}

}