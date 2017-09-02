

class Cancion{
	var titulo
	var duracion=0
	var letra
	
	constructor(unTitulo){
		titulo = unTitulo
	}
	
	constructor(unaDuracion, unaLetra){//creo que esta de más
		duracion=unaDuracion
		letra=unaLetra
	}
	
	method titulo() = titulo
	method titulo(unTitulo){
		titulo = unTitulo
	}

	method letra() = letra
	method letra(unaLetra){
		letra = unaLetra
	}

	method duracion() = duracion
	method duracion(unaDuracion){
		duracion = unaDuracion
	}
	
	method esCorta()=duracion<180
	
	method tenesLaPalabra(unaPalabra){
		return self.letra().toLowerCase().contains(unaPalabra.toLowerCase())
	}
	
}

