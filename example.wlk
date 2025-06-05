/*
Para crear una nueva instancia de una clase y que se asigne a una variable o
constante se debe hacer en consola lo siguiente
 const ho1 = new Hogar(nivelDeMugre=5, confort=2)
 const hu1 = new Huerta(produccion=100)
 const hu2 = new Huerta(produccion=200)
 const hu3 = new Huerta(produccion=50)
*/
import plagas.*

class Hogar {
  var nivelDeMugre
  const confort
  method esBueno() = nivelDeMugre <= (confort/2)
  method efectoDelAtaque(unaPlaga) {nivelDeMugre = nivelDeMugre + unaPlaga.daño()}
}

class Huerta {
  var produccion 
  method esBueno() = produccion > nivelMinimo.nivel()
  method efectoDelAtaque(unaPlaga) {
    produccion = produccion - (unaPlaga.daño() * 0.1 + if(unaPlaga.transmiteEnfermedades()) 10 else 0)
  }
}

object nivelMinimo {
  var property nivel = 1000
}

class Mascota {
  var nivelDeSalud
  method esBueno() = nivelDeSalud > 250
  method efectoDelAtaque(unaPlaga) {
    if (unaPlaga.transmiteEnfermedades()) {
      nivelDeSalud = (nivelDeSalud - unaPlaga.daño()).max(0)
    }
  } 
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