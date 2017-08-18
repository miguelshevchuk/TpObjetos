class Integrante{
	var habilidadSolista
	var habilidadGrupo
	var habilidadActual
	var cantidadQueCobra=0
	
	
	constructor(unaHabilidadSolista, unaHabilidadGrupo){
		habilidadGrupo = unaHabilidadGrupo
		habilidadSolista=unaHabilidadSolista
		habilidadActual=unaHabilidadGrupo
	
	}
	
	constructor(){habilidadActual=0}
	
		method cantidadQueCobra()=cantidadQueCobra
		method cantidadQueCobra(nuevaCantidad){
			cantidadQueCobra=nuevaCantidad
		}
		
		method habilidadActual()=habilidadActual
		method habilidadActual(nuevaHabilidadActual){
			habilidadActual=nuevaHabilidadActual
		}
		
		method decimeHabilidad()=habilidadActual
	
		method interpretaBien(unaCancion){
		return true
	}
		
}

class Cancion{
		var duracion=0
		var letra
	
		constructor(unaDuracion, unaLetra){
		duracion=unaDuracion
		letra=unaLetra
		}
	
		method duracion()=duracion
		method letra()=letra
}

class Presentacion{
	var participantes=0
	var capacidad=0
	
	constructor(unosParticipantes, unaCapacidad)
	
	method participantes()=participantes
	method participantes(nuevosParticipantes){participantes=nuevosParticipantes}
	
	method capacidad()=capacidad
	method capacidad(nuevaCapacidad){capacidad=nuevaCapacidad}

}

object joaquin inherits Integrante(20, 25){ 
	
		method estaEnGrupo(){ 
			habilidadActual = habilidadGrupo
			self.cantidadQueCobra(50)
		}
 		method estaSolista(){ 
 			habilidadActual = habilidadSolista
 			self.cantidadQueCobra(100)
 		}
	
		override method interpretaBien(unaCancion)=unaCancion.duracion()>300
}

object lucia inherits Integrante(70, 50){
	
		method estaEnGrupo(){ habilidadActual = habilidadGrupo }
 		method estaSolista(){ habilidadActual = habilidadSolista }
	
		override method interpretaBien(unaCancion)=unaCancion.letra().contains("viento")
		
}

object luisAlberto inherits Integrante{
	var guitarraActual = 0
	const fender = 10
	const gibsonsana = 15
	const gibsonrota = 5
	
	method tocaConFender(){guitarraActual=fender}
	
	
	method tocaConGibsonsana(){guitarraActual=gibsonsana}
	
	
	method tocaConGibsonrota(){guitarraActual=gibsonrota}
	
	
	method guitarraActual()=guitarraActual
	method guitarraActual(nuevaGuitarra){
		guitarraActual=nuevaGuitarra
	}
	
	override method decimeHabilidad(){
		self.habilidadActual( 8*self.guitarraActual())
		if(self.habilidadActual()>100){
			return 100
		}
		else{
			return habilidadActual
		}
	}
	
}


object cisne inherits Cancion(312,"hoy el viento se abrió quedó vacío el aire una vez más y el manantial brotó y nadie está aquí y puedo ver que solo estallan las hojas al brillar"){}

object laFamilia inherits Cancion(264,"Quiero brindar por mi gente sencilla, por el amor brindo por la familia"){}



object lunaPark inherits Presentacion([luisAlberto, joaquin, lucia], 9290){}

object laTrastienda inherits Presentacion([luisAlberto, joaquin, lucia],400){}




