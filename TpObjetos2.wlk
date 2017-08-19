
class Musico {
	var habilidad
	var instrumento

	constructor(unaHabilidad, unInstrumento) {
		habilidad = unaHabilidad 
		instrumento = unInstrumento
	}


	method habilidad() = habilidad
	method habilidad(nuevaHabilidad) {
		habilidad = nuevaHabilidad
	}

	method instrumento() = instrumento
	method instrumento(nuevoInstrumento) {
		instrumento = nuevoInstrumento
	}

}

class Instrumento{
	var marca
	var precio

	method marca() = marca
	method marca(nuevaMarca) { 
		marca =
		nuevaMarca 
	}
	
	method precio() = precio
	method precio(nuevoPrecio) { 
		precio = nuevoPrecio 
	}
}

class Cancion {
	var duracion = 0
	var letra

	constructor(unaDuracion, unaLetra) {
		duracion = unaDuracion letra = unaLetra
	}

	method duracion() = duracion
	method letra() = letra
}

class Presentacion {
	var participantes = []
	var capacidad = 0
	var fecha

	constructor(unosParticipantes, unaCapacidad, unaFecha) {
		participantes = unosParticipantes
		capacidad = unaCapacidad
		fecha = unaFecha
	}
	
	
	method participantes() = participantes
	method participantes(nuevosParticipantes) { 
		participantes = nuevosParticipantes 
	}

	method capacidad() = capacidad
	method capacidad(nuevaCapacidad) { 
		capacidad = nuevaCapacidad 
	}

	method fecha() = fecha
	method fecha(nuevaFecha) { 
		fecha = nuevaFecha 
	}
}

class Grupo{
	var integrantes = []

	method integrantes() = fecha
	method integrantes(nuevosIntegrantes) { 
		integrantes = nuevosIntegrantes 
	}
}

object joaquin inherits Musico {

	var joaquin = new Musico();

	method estaEnGrupo() { joaquin.habilidad(25)}
	method estaSolista() { joaquin.habilidad(20)}

	override method interpretaBien(unaCancion) = unaCancion.duracion() > 300
}

object lucia inherits Musico {

	var lucia = new Musico();

	method estaEnGrupo() { lucia.habilidad(50)}
	method estaSolista() { lucia.habilidad(70)}

	override method interpretaBien(unaCancion) =
	unaCancion.letra().contains("viento")

}

object luisAlberto inherits Musico {

	var luisAlberto = new Musico();
	luisAlberto.instrumento(fender)

	method estaEnGrupo() { self.calcularHabilidadTotal()}
	method estaSolista() { self.calcularHabilidadTotal()}

	method calcularHabilidadTotal(){
		luisAlberto.habilidad(8*luisAlberto.instrumento().precio())
	}

	override method interpretaBien(unaCancion) = true

}

object fender inherits Instrumento{
	var fender = new Instrumento()

	fender.marca("Fender")
	fender.precio(10)
}

object gibson inherits Instrumento{
	var gibson = new Instrumento()

	gibson.marca("Gibson")
	gibson.precio(15)
}

object gibsonRota inherits Instrumento{
	var gibson = new Instrumento()

	gibson.marca("Gibson")
	gibson.precio(5)
}


object cisne inherits Cancion ( 312 ,
"hoy el viento se abri� qued� vac�o el aire una vez m�s y el manantial brot� y nadie est� aqu� y puedo ver que solo estallan las hojas al brillar"
) {
}

object laFamilia inherits Cancion ( 264 ,
"Quiero brindar por mi gente sencilla, por el amor brindo por la familia" ) {
}

object lunaPark inherits Presentacion ( [ luisAlberto, joaquin, lucia ] , 9290
) {
}

object laTrastienda inherits Presentacion ( [ luisAlberto, joaquin, lucia ] ,
400 ) {
}




