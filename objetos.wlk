// COLORES

object rojo {
  method esFuerte() = true
}

object verde {
  method esFuerte() = true
}

object celeste {
  method esFuerte() = false
}

object pardo {
  method esFuerte() = false
}

object naranja {
  method esFuerte() = true 
}

// MATERIALES

object cobre {
  method esBrillante() = true
}

object vidrio {
  method esBrillante() = true
}

object lino {
  method esBrillante() = false
}

object madera {
  method esBrillante() = false
}

object cuero {
  method esBrillante() = false
}

// COSAS

object remera {
  method color() = rojo
  method peso() = 800
  method material() = lino
}

object pelota {
  method color() = pardo
  method peso() = 1300
  method material() = cuero  
}

object biblioteca {
  method color() = verde
  method peso() = 8000
  method material() = madera
}

object munieco {
  var peso = 0
  method color() = celeste
  method material() = vidrio
  method peso() =  peso
  method peso(unPeso) {
    peso = unPeso
  }
}

object placa {
  var peso = 0
  var color = rojo
  method material() = cobre
  method peso() = peso
  method color() = color
  method peso(unPeso) {
    peso = unPeso
  }
  method color(unColor) {
    color = unColor
  }  
}

object arito {
  method color() = celeste
  method peso() = 180
  method material() = cobre 
}

object banquito {
  var color = naranja
  method peso() = 1700
  method material() = madera
  method color() = color
  method color(unColor) {
    color = unColor
  }
}

object cajita {
  var objetoInterno = arito
  method color() = rojo
  method peso() = 400 + objetoInterno.peso()
  method material() = cobre
  method objetoInterno() = objetoInterno
  method objetoInterno(unObjeto) {
    objetoInterno = unObjeto
  }  
}