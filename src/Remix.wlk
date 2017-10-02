import Cancion.*

class Remix inherits Cancion {
	
	constructor(unTitulo)=super(){titulo= unTitulo + " remix"}
	
	
	override method duracion(unaCancion){duracion = unaCancion.duracion()*3}
	override method letra(unaCancion){letra = "mueve tu cuelpo baby " + unaCancion.letra() + " yeah oh yeah"}
	override method titulo(unaCancion){	titulo = unaCancion.titulo()}


}