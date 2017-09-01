
class Banda {
	var miembros = [];

	method miembros() = miembros
	method miembros(nuevosMiembros){
		miembros = nuevosMiembros
	}
	
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