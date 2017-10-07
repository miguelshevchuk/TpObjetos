import Musico.*
import Instrumento.*


object musicoEspecial inherits Musico{

	var instrumento = new Instrumento("Fender", 10)

	method instrumento() = instrumento
	method instrumento(unInstrumento) {
		instrumento = unInstrumento
	}

	override method interpretaBien(unaCancion) = true
	method miHabilidadEsMayorACien(unaHabilidad) = unaHabilidad > 100
	
	override method decimeTuHabilidad(){
		var habilidadTotal =  8 * (instrumento.precio())
		if(self.miHabilidadEsMayorACien(habilidadTotal)){
			habilidadTotal = 100
		}
		
		return habilidadTotal
	} 
//	
	override method precioPorTocarEn(unaPresentacion){
			if(self.esAntesDeSeptiembre(unaPresentacion)){
				return 1000
			}else{
				return 1200
			}
	}
	
	method esAntesDeSeptiembre(unaPresentacion) = unaPresentacion.fechaPresentacion() < (new Date(01, 09, 2017))
	
}