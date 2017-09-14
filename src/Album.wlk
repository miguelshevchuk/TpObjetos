import Cancion.*

class Album {
 	var nombreAlbum
 	var fechaDeLanzamiento
 	var copiasALaVenta
 	var copiasVendidas
 	var canciones=[]
 	//const criterioDeTitulo = {cancion=>cancion.letra().size()}
 	const criterioDeLetra = {cancion=>cancion.titulo().size()}
 	//const criterioDeDuracion = {cancion=>cancion.duracion()}
 	
 	
 	constructor(nombreDelAlbum, fechaLanzamiento){
 		nombreAlbum = nombreDelAlbum
 		fechaDeLanzamiento = fechaLanzamiento
 	}

	method criterioDeLetra()=criterioDeLetra
	
	method nombreAlbum()=nombreAlbum
	method nombreAlbum(nuevoNombreAlbum){nombreAlbum=nuevoNombreAlbum}
	
	method fechaDeLanzamiento()=fechaDeLanzamiento
	method fechaDeLanzamiento(nuevoFechaDeLanzamiento){fechaDeLanzamiento=nuevoFechaDeLanzamiento}
	
	method copiasALaVenta()=copiasALaVenta
	method copiasALaVenta(nuevoCopiasALaVenta){copiasALaVenta=nuevoCopiasALaVenta}
	
	method copiasVendidas()=copiasVendidas
	method copiasVendidas(nuevoCopiasVendidas){copiasVendidas=nuevoCopiasVendidas}
	
	method canciones()=canciones
	method canciones(nuevasCanciones){ canciones= nuevasCanciones}
	
	method cancionesMenoresATresMinutos() = self.canciones().all({cancion=>cancion.esCorta()})
	
	method cancionesQueTienenLaPalabra(unaPalabra) = self.canciones().filter({cancion=>cancion.tenesLaPalabra(unaPalabra)})
	
	method duracionDeSusCanciones() = self.canciones().sum({cancion=>cancion.duracion()})
	
	method maximaCancionSegun(unCriterio)= self.canciones().max({cancion=>unCriterio.apply(cancion)})
	
	method maximaCancionSegunLetra() = self.canciones().max({cancion=>cancion.letra().size()})
	method maximaCancionSegunTitulo() = self.canciones().max({cancion=>cancion.titulo().size()})
	method maximaCancionSegunDuracion() = self.canciones().max({cancion=>cancion.duracion()})
	
	method buenasVentas() = self.copiasVendidas()>(75*self.copiasALaVenta()/100)

}
