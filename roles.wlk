 object guardian {
    method poderExtra() = 100

    method esExtraordinario(unaCriatura) = unaCriatura.poderMagico() > 50

    method puedeCambiarDeRol() = true

    method cambiarRol() = domador
}

object domador {
    const mascotas = []

    method poderExtra() = 150 * self.cantMascotasConCuernos()

    method esExtraordinario(unaCriatura) = unaCriatura.poderMagico() >= 15 and self.sonMascotasVeteranas()

    method sonMascotasVeteranas() = mascotas.all({m => m.obtenerEdad() > 10})

    method cantMascotasConCuernos() = mascotas.count({m => m.tieneCuernos()})

    method puedeCambiarDeRol() = mascotas.any({m => m.tieneCuernos()})

    method cambiarRol() = hechicero
}

object hechicero {
    method poderExtra() = 0

    method esExtraordinario(unaCriatura) = true

    method puedeCambiarDeRol() = true

    method cambiarRol() = guardian
}
