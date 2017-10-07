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
	
	method cantidadQueCobraLaBanda(unShow) = self.miembros().sum({integrante=>integrante.precioPorTocarEn(unShow)})
	
	
	method precioPorTocarEn(unShow) = self.cantidadQueCobraLaBanda(unShow) + self.representante().montoQueCobra()
	
	method puedeTocarCancion(unaCancion)= self.miembros().all({integrante=>integrante.interpretaBien(unaCancion)})

	
	method agregarMiembroALaBanda(musico){
		if(!miembros.contains(musico)){
			musico.banda(self)
			miembros.add(musico)
		}
	}
	
	method renuncia(musico){
		if(miembros.contains(musico)){
			musico.banda(null)
			miembros.remove(musico)
		}
	}
	
}