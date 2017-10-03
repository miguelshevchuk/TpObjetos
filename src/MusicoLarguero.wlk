import musico.*

class MusicoLarguero inherits Musico{

	var tiempoNecesarioParaInterpretarBienUnaCancion
	
	method tiempoNecesarioParaInterpretarBienUnaCancion() = tiempoNecesarioParaInterpretarBienUnaCancion
	method tiempoNecesarioParaInterpretarBienUnaCancion(unNuevoTiempo) {
		tiempoNecesarioParaInterpretarBienUnaCancion = unNuevoTiempo
	}

	method cumpleCondicionDeTiempo(unaCancion) = unaCancion.duracion() > tiempoNecesarioParaInterpretarBienUnaCancion

	override method interpretaBien(unaCancion) {return super(unaCancion) || self.cumpleCondicionDeTiempo(unaCancion)}
	

}