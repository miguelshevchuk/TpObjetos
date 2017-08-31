import Presentacion.*
import Integrante.*
import Cancion.*


class MusicoDeGrupo inherits Integrante{ 
	
	constructor(unaHabilidadSolista, variacionPorGrupo){ // constructor de la clase de joaquin
		habilidadGrupo = unaHabilidadSolista + variacionPorGrupo
		habilidadSolista=unaHabilidadSolista
		habilidadActual=unaHabilidadSolista
		estado="Solista"
	}

		method estaEnGrupo(){ 
			self.estado("Está en un grupo")
			self.habilidadActual(self.habilidadGrupo())
			self.cantidadQueCobra(50)
		}
 		method estaSolista(){ 
 			self.estado("Es solista")
 			self.habilidadActual(self.habilidadSolista())
 			self.cantidadQueCobra(100)
 		}
	
		override method interpretaBien(unaCancion)=unaCancion.duracion()>300
}

object joaquin inherits MusicoDeGrupo(20, 5){
	
}


class VocalistaPopular inherits Integrante{
		var palabraDeCancion=0
		
		constructor(unaHabilidadSolista, variacionGrupo, palabraCancion){
			habilidadGrupo = unaHabilidadSolista - variacionGrupo
			habilidadSolista= unaHabilidadSolista
			habilidadActual= unaHabilidadSolista
			palabraDeCancion=palabraCancion
			estado="Solista"
		}
		
		method palabraDeCancion()=palabraDeCancion
		method palabraDeCancion(nuevaPalabraDeCancion){
			palabraDeCancion=nuevaPalabraDeCancion
		}
		
		method estaEnGrupo(){ 
			self.estado("Está en un grupo")
			self.habilidadActual(self.habilidadGrupo())
		}
 		method estaSolista(){
 			self.estado("Es solista")
 			self.habilidadActual(self.habilidadSolista())
 		}
	
		override method interpretaBien(unaCancion)=unaCancion.letra().contains(self.palabraDeCancion())
		
	
}



object lucia inherits VocalistaPopular(70, 20, "familia"){
	
		method cobraPorLugarDePresentacion(unaPresentacion){
			if(unaPresentacion.capacidad()>5000){
				self.cantidadQueCobra(500)
			}
			else{self.cantidadQueCobra(400)}
		}
		
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
	 method cobraPorLugarDePresentacion(unaPresentacion){
	 	if(unaPresentacion.fechaPresentacion()<new Date(30,09,2017)){
	 		self.cantidadQueCobra(1000)
	 	}
	 	else{self.cantidadQueCobra(1200)
	 		
	 	}
	 }
	
}


object cisne inherits Cancion(312,"hoy el viento se abrió quedó vacío el aire una vez más y el manantial brotó y nadie está aquí y puedo ver que solo estallan las hojas al brillar"){}

object laFamilia inherits Cancion(264,"Quiero brindar por mi gente sencilla, por el amor brindo por la familia"){}



object lunaPark inherits Presentacion([luisAlberto, joaquin, lucia], 9290, new Date(20,4,2017)){
	
}


object laTrastienda inherits Presentacion([luisAlberto, joaquin, lucia],400, new Date(15,11,2017)){

	override method capacidad(){
		if(self.esSabado()){
			return 700
		}
		else{
			return 400
		}
	}
	
	method esSabado(){
		return self.fechaPresentacion().dayOfWeek() == 6
	}
}

