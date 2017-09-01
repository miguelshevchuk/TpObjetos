import Cancion.*

class Album {
 	var nombreAlbum
 	var fechaDeLanzamiento
 	var copiasALaVenta
 	var copiasVendidas
 	var canciones=[]
 	
 	constructor(nombreDelAlbum, fechaLanzamiento){
 		nombreAlbum = nombreDelAlbum
 		fechaDeLanzamiento = fechaLanzamiento
 	}

	method nombreAlbum()=nombreAlbum
	method nombreAlbum(nuevoNombreAlbum){nombreAlbum=nuevoNombreAlbum}
	
	method fechaDeLanzamiento()=fechaDeLanzamiento
	method fechaDeLanzamiento(nuevoFechaDeLanzamiento){fechaDeLanzamiento=nuevoFechaDeLanzamiento}
	
	method copiasALaVenta()=copiasALaVenta
	method copiasALaVenta(nuevoCopiasALaVenta){copiasALaVenta=nuevoCopiasALaVenta}
	
	method copiasVendidas()=copiasVendidas
	method copiasVendidas(nuevoCopiasVendidas){copiasVendidas=nuevoCopiasVendidas}
	
	method canciones()=canciones
	method canciones(nuevaCancion){canciones.add(nuevaCancion)}
	
	method cancionesMenoresATresMinutos(){
		self.canciones().all({cancion=>cancion.esCorta()})
	}
	
	method cancionesQueTienenLaPalabra(){
		return self.canciones().map({cancion=>cancion.tenesLaPalabra()})
	}
	
	method duracionDeSusCanciones(){
		return self.canciones().sum({cancion=>cancion.tamanioCancion()})
	}
	
	method buenasVentas(){
		return self.copiasVendidas()>(75*self.copiasALaVenta()/100)
	}
}
