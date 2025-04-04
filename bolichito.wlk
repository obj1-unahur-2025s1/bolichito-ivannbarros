import personas.*
import objetos.*

object bolichito {
    var objetoEnVidriera = pelota
    var objetoEnMostrador = remera
    method objetoEnMostrador(objetoAPoner) {
        objetoEnMostrador = objetoAPoner
    }
    method objetoEnrVidriera(objetoAPoner) {
        objetoEnVidriera = objetoAPoner
    }
    method esBrillante() {
        return objetoEnMostrador.material().esBrillante() and
            objetoEnVidriera.material().esBrillante()
    }
    method esMonocromatico() {
        return objetoEnMostrador.color() == objetoEnVidriera.color()
    }
    method estaEquilibrado() {
        return objetoEnMostrador.peso() > objetoEnVidriera.peso()
    }
    method tieneAlgoDeColor(unColor) {
        return (objetoEnMostrador.color() == unColor) ||
            (objetoEnVidriera.color() == unColor)
    }  
    method puedeMejorar() {
        return self.esMonocromatico() || not self.estaEquilibrado()
    }
    method puedeOfrecerleAlgoA(unaPersona) {
        return unaPersona.leGusta(objetoEnMostrador) || unaPersona.leGusta(objetoEnVidriera)
    } 
    method intercambiarObjetos() {
      const aux = objetoEnMostrador
      objetoEnMostrador = objetoEnVidriera
      objetoEnVidriera = aux
    }
  }