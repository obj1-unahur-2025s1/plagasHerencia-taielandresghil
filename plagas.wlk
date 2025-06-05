//Herencia
class Plaga {
    var poblacion
    method transmiteEnfermedades() = poblacion >= 10
    method efectoDelAtaque() {poblacion = poblacion + poblacion * 0.1}
    method atacar(unElemento) {
        self.efectoDelAtaque()
        unElemento.efectoDelAtaque()
    }
}

class Cucarachas inherits Plaga{
    var pesoPromedioBicho
    method daño() = poblacion / 2
    //Sobreescribe el metodo de Plaga y ademas con super() && le agrega a ese metodo
    override method transmiteEnfermedades() = super() && pesoPromedioBicho >= 10
    override method efectoDelAtaque() {
        super()
        pesoPromedioBicho = pesoPromedioBicho + 2
        }
}


class Mosquitos inherits Plaga{
    method daño() = poblacion
    override method transmiteEnfermedades() = super() && poblacion % 3 == 0 
}

class Pulgas inherits Plaga{
    method daño() = poblacion * 2
}

class Garrapatas inherits Pulgas{
    override method efectoDelAtaque() {poblacion = poblacion + poblacion * 0.2}
}