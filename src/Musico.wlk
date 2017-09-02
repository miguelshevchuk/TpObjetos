import Album.*
import Cancion.*

class Musico{
	var habilidadSolista
	var variacionEnGrupo
	var tocaEnGrupo = false
	var albumesQueEdito = []

	method habilidadSolista()=habilidadSolista
	method habilidadSolista(nuevaHabilidadSolista){habilidadSolista=nuevaHabilidadSolista}
	
	method tocaEnGrupo()=tocaEnGrupo
	method tocaEnGrupo(tocasEnGrupo){tocaEnGrupo=tocasEnGrupo}
	
	method variacionEnGrupo()=variacionEnGrupo
	method variacionEnGrupo(unaVariacion){variacionEnGrupo=unaVariacion}
	
	method albumesQueEdito()=albumesQueEdito
	method albumesQueEdito(nuevosAlbumes){albumesQueEdito = nuevosAlbumes}
		
	method tocasEnLaPresentacion(unaPresentacion) = unaPresentacion.participantes().contains(self)
		
	method decimeTuHabilidad()
	
	method interpretaBien(unaCancion)=true
	
	method cuantoCobrasLaPresentacion(unaPresentacion)
	
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
}

