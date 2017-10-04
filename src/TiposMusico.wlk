
class MusicoImparero {

	method interpretaBien(unaCancion) = unaCancion.tenesTiempoImpar()

}

class MusicoPalabrero{

	var palabraDeCancion
	
	constructor(unaPalabra){
		self.palabraDeCancion(unaPalabra)
	}
	
	method palabraDeCancion()=palabraDeCancion
	method palabraDeCancion(nuevaPalabraDeCancion){
		palabraDeCancion=nuevaPalabraDeCancion
	}

	method interpretaBien(unaCancion) = unaCancion.tenesLaPalabra(self.palabraDeCancion())


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

	method interpretaBien(unaCancion) = unaCancion.duracion() > tiempoNecesarioParaInterpretarBienUnaCancion
	

}