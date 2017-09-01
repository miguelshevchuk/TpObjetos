

class Musico{
	var habilidadSolista
	var variacionEnGrupo
	var tocaEnGrupo = false

	method habilidadSolista()=habilidadSolista
	method habilidadSolista(nuevaHabilidadSolista){habilidadSolista=nuevaHabilidadSolista}
	
	method tocaEnGrupo()=tocaEnGrupo
	method tocaEnGrupo(tocasEnGrupo){tocaEnGrupo=tocasEnGrupo}
	
	method variacionEnGrupo()=variacionEnGrupo
	method variacionEnGrupo(unaVariacion){variacionEnGrupo=unaVariacion}
		
	method tocasEnLaPresentacion(unaPresentacion) = unaPresentacion.miembros().contains(self)
		
	method decimeTuHabilidad()
	
	method interpretaBien(unaCancion)=true
	
	method cuantoCobrasLaPresentacion(unaPresentacion)
}
