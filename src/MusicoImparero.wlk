import musico.*

class MusicoImparero inherits Musico {

	

	override method interpretaBien(unaCancion) {return super(unaCancion) || unaCancion.tenesTiempoImpar()}

}