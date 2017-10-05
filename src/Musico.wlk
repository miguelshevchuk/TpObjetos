import Album.*
import Cancion.*
import TiposMusico.*
import FormasDeCobro.*

class Musico{
	var habilidadSolista
	var variacionEnGrupo
	var tocaEnGrupo = false
	var albumesQueEdito = []
	var precio
	var tipoDeCobro 
	var tipoMusico
	
	
	method precio() = precio
	method precio(unPrecio){
		precio = unPrecio
	}
	
	method tipoDeCobro() = tipoDeCobro
	method tipoDeCobro(unTipoDeCobro){
		tipoDeCobro = unTipoDeCobro
	}
	
	method tipoMusico() = tipoMusico
	method tipoMusico(unTipoDeMusico){
		tipoMusico = unTipoDeMusico
	}

	method habilidadSolista()=habilidadSolista
	method habilidadSolista(nuevaHabilidadSolista){habilidadSolista=nuevaHabilidadSolista}
	
	method tocaEnGrupo()=tocaEnGrupo
	method tocaEnGrupo(tocasEnGrupo){tocaEnGrupo=tocasEnGrupo}
	
	method variacionEnGrupo()=variacionEnGrupo
	method variacionEnGrupo(unaVariacion){variacionEnGrupo=unaVariacion}
	
	method albumesQueEdito()=albumesQueEdito
	method albumesQueEdito(nuevosAlbumes){albumesQueEdito = nuevosAlbumes}
		
//	method tocasEnLaPresentacion(unaPresentacion) = unaPresentacion.participantes().contains(self)
		
	method decimeTuHabilidad()
	
	method interpretaBien(unaCancion) = 
			self.esDeTuAutoria(unaCancion) ||
			self.cumpleCondicionDeHabilidad() || 
			self.tipoMusico().sabeInterpretar(unaCancion)
			
//	method decimeCualInterpretasBien(unasCanciones){
//		const a = new Cancion()
//		a.letra("Hola de nuevo")
//		self.interpretaBien(a)
////		 (unasCanciones)
////		return [a]
//		return [a].filter({cancion=>self.interpretaBien(cancion)})
//	}
	
//	method decimeCualInterpretasBien(unasCanciones) = unasCanciones.filter({cancion=>self.interpretaBien(cancion)})
	
	method decimeCualInterpretasBien(unasCanciones){ 
	
//		self.cambiarTipoDeMusico((new MusicoPalabrero("de")))
		return 	unasCanciones.filter({cancion=>self.interpretaBien(cancion)})
	
	
	}
	
	method cumpleCondicionDeHabilidad() = self.habilidadSolista() > 60
	
	method esDeTuAutoria(unaCancion) = self.albumesQueEdito().any({album=>album.canciones().contains(unaCancion)})
	
	method sosMinimalista() = albumesQueEdito.all({album=>album.cancionesMenoresATresMinutos()})
	
	method cancionesQueTienenLaPalabra(unaPalabra){
		return self.albumesQueEdito().flatMap({album=>album.cancionesQueTienenLaPalabra(unaPalabra)})
	}
	
	method duracionTotalDeSuObra(){
		return self.albumesQueEdito().sum({album=>album.duracionDeSusCanciones()})
	}
	
	method laPego(){
		return self.albumesQueEdito().all({album=>album.buenasVentas()})
	}
	
	method precioPorTocarEn(unaPresentacion) =	self.tipoDeCobro().cobrar(unaPresentacion, self)
	
	method cambiarTipoDeMusico(unTipo){
		self.tipoMusico(unTipo)
	}
}

