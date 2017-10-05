import Cancion.*

class MusicoImparero {

	method sabeInterpretar(unaCancion) = unaCancion.tenesTiempoImpar()

}

class MusicoPalabrero{

	var palabraDeCancion
	
	constructor(unaPalabra){
		palabraDeCancion = unaPalabra
	}
	
	method palabraDeCancion()=palabraDeCancion
	method palabraDeCancion(nuevaPalabraDeCancion){
		palabraDeCancion=nuevaPalabraDeCancion
	}

	method sabeInterpretar(unaCancion) = unaCancion.tenesLaPalabra(self.palabraDeCancion())


}

class MusicoLarguero{

	var tiempoNecesarioParaInterpretarBienUnaCancion
	
	constructor(unTiempo){
		self.tiempoNecesarioParaInterpretarBienUnaCancion(unTiempo)
	}
	
	method tiempoNecesarioParaInterpretarBienUnaCancion() = tiempoNecesarioParaInterpretarBienUnaCancion
	method tiempoNecesarioParaInterpretarBienUnaCancion(unNuevoTiempo) {
		tiempoNecesarioParaInterpretarBienUnaCancion = unNuevoTiempo
	}

	method sabeInterpretar(unaCancion) = unaCancion.duracion() > tiempoNecesarioParaInterpretarBienUnaCancion
	

}