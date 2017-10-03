import musico.*

class MusicoPalabrero inherits Musico{

	var palabraDeCancion
	
	method palabraDeCancion()=palabraDeCancion
	method palabraDeCancion(nuevaPalabraDeCancion){
		palabraDeCancion=nuevaPalabraDeCancion
	}

	override method interpretaBien(unaCancion){return super(unaCancion) || unaCancion.tenesLaPalabra(self.palabraDeCancion())}


}