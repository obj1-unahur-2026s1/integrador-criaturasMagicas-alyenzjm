object claros {
    var colonia

    method cambiarColonia(nuevaColonia) {colonia = nuevaColonia}

    method poderDefensivo() = colonia.poderOfensivoTotal() + 100
}

object castillos {
    var colonia

    method cambiarColonia(nuevaColonia) {colonia = nuevaColonia}

    method poderDefensivo() = 200 * colonia.cantidadCriaturasFormidables()
}