import Musico.*
import Instrumento.*


class MusicoEspecial inherits Musico{

	var instrumento

	method instrumento() = instrumento
	method instrumento(unInstrumento) {
		instrumento = unInstrumento
	}

	override method interpretaBien(unaCancion) = true
	
	method miHabilidadEsMayorACien(unaHabilidad) = unaHabilidad > 100
	
	override method decimeTuHabilidad(){
		var habilidadTotal =  8*instrumento.precio()
		if(self.miHabilidadEsMayorACien(habilidadTotal)){
			habilidadTotal = 100
		}
		
		return habilidadTotal
	} 
	
	override method cuantoCobrasLaPresentacion(unaPresentacion){
		if(self.tocasEnLaPresentacion(unaPresentacion)){
			if(self.esAntesDeSeptiembre(unaPresentacion)){
				return 1000
			}else{
				return 1200
			}
		}else{
			return 0
		}
	}
	
	method esAntesDeSeptiembre(unaPresentacion) = unaPresentacion.fechaPresentacion() < (new Date(2017, 09, 1))
	
}