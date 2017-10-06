import Representante.*

class Banda {
	var representante
	var miembros = [];
	
	method representante()=representante
	method representante(nuevoRepresentante){representante=nuevoRepresentante}

	method miembros() = miembros
	method miembros(nuevosMiembros){
		miembros = nuevosMiembros
	}
	
	method decimeTuHabilidad() = self.miembros().sum({integrante=>integrante.decimeTuHabilidad()}) * 1.1 // el 10%.
	
	method cantidadQueCobraLaBanda(unShow) = self.miembros().sum({integrante=>integrante.tipoDeCobro().cobrar(unShow, integrante)})
	
	
	method cantidadQueCobraLaBandaTotal(unShow) = self.cantidadQueCobraLaBanda(unShow) + self.representante().montoQueCobra()
	
	method puedeTocarCancion(unaCancion)= self.miembros().all({integrante=>integrante.interpretaBien(unaCancion)})
	
	method agregarMiembroALaBanda(musico){
		if(!miembros.contains(musico)){
			musico.tocaEnGrupo(true)
			miembros.add(musico)
		}
	}
	
	method renuncia(musico){
		if(miembros.contains(musico)){
			musico.tocaEnGrupo(false)
			miembros.remove(musico)
		}
	}
	
}