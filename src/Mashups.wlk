import Cancion.*

class Mashups inherits Cancion {
	
	constructor(unaCancion, otraCancion)=super(){
		letra = unaCancion.letra() + " " + otraCancion.letra()
		titulo = unaCancion.titulo() + " x " + otraCancion.titulo()
		duracion = unaCancion.duracion().max(otraCancion.duracion())
	}
	
	method agregaCancion(unaCancion){
		self.duracion(self.duracion().max(unaCancion.duracion()))
		self.letra(self.letra() + " " + unaCancion.letra())
		self.titulo(self.titulo() + " x " + unaCancion.titulo())
		
	}
	

}