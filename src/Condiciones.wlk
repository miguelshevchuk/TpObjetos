import HabilidadRequeridaException.*
import CancionInterpretadaException.*
import CompositorException.*

class CondicionDeHabilidad {

	var habilidadMinima

	constructor(unaHabilidad){
		habilidadMinima = unaHabilidad
	}

	method ejecutarCondicion(unMusico){
		if(not(unMusico.decimeTuHabilidad() >= habilidadMinima)){
			throw new HabilidadRequeridaException("El musico no cumple con el minimo de habilidad requerido")
		}
		
		return true;
	}

}

class CondicionDeCancionBienInterpretada {

	var cancion

	constructor(unaCancion){
		cancion = unaCancion
	}

	method ejecutarCondicion(unMusico){
		if(not(unMusico.interpretaBien(cancion))){
			throw new CancionInterpretadaException("El musico no interpreta bien la cancion requerida")
		}
		
		return true;
	}

}

class CondicionDeCompositor {

	var cantidadMinimaDeCanciones

	constructor(unaCantidad){
		cantidadMinimaDeCanciones = unaCantidad
	}

	method cantidadMinimaDeCanciones()=cantidadMinimaDeCanciones
	method cantidadMinimaDeCanciones(unaCantidad){cantidadMinimaDeCanciones=unaCantidad}

	method ejecutarCondicion(unMusico){
		if(not(unMusico.albumesQueEdito().sum({album=>album.canciones().size()}) >= cantidadMinimaDeCanciones)){
			throw new CompositorException("El musico no cumple con la cantidad minima de canciones compuestas")
		}
		
		return true;
	}

}