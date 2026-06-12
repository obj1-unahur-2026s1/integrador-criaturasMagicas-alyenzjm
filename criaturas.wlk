class Criatura {
    const poderMagico
    const astucia
    var rol

    method poderMagico() = poderMagico

    method poderOfensivo() = poderMagico * 10 + rol.poderExtra()

    method esFormidable() = self.esAstuta() or self.esExtraordinaria()

    method esAstuta() = astucia > 50

    method esExtraordinaria() = rol.esExtraordinario()

    method cambiarDeRolSiPuede() {
        if (rol.puedeCambiarDeRol()) {
            rol = rol.cambiarRol()
        }
    }
}

class Hada inherits Criatura {
    var kmVuelo = 2

    method kmVuelo() = kmVuelo

    method aumentarKm(cant) {
        kmVuelo = (kmVuelo + cant).min(25)
    }

    override method esExtraordinaria() = super() and self.kmVuelo() > 10
}

class Duende inherits Criatura {
    override method poderOfensivo() = super() * 1.1

    override method esAstuta() = false

}

class Mascota {
    const edad

    method obtenerEdad() = edad
    method tieneCuernos()
}
class prueba {
  
}