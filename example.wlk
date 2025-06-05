/*
Para crear una nueva instancia de una clase y que se asigne a una variable o
constante se debe hacer en consola lo siguiente
 const ho1 = new Hogar(nivelDeMugre=5, confort=2)
 const hu1 = new Huerta(produccion=100)
 const hu2 = new Huerta(produccion=200)
 const hu3 = new Huerta(produccion=50)
*/

class Hogar {
  const nivelDeMugre
  const confort
  method esBueno() = nivelDeMugre <= (confort/2)
}

class Huerta {
  const produccion 
  method esBueno() = produccion > nivelMinimo.nivel()
}

object nivelMinimo {
  var property nivel = 1000
}

class Mascota {
  const nivelDeSalud
  method esBueno() = nivelDeSalud > 250
}

class Barrio {
  const elementos = []
  method agregarElementos(listaElementos) {(elementos.addAll(listaElementos))}
  method losBuenos() = elementos.filter({e => e.esBueno()}) 
  method losMalos() = elementos.filter({e => not e.esBueno()}) 
  method esCopado() = self.losBuenos().size() > self.losMalos().size()
  method esBuenoEl(unElemento) = if (elementos.contains(unElemento)) {
    unElemento.esBueno()
    }
  }