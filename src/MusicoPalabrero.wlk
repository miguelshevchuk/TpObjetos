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