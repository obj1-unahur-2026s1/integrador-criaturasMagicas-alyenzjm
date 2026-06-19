class Colonia {
    const integrantes = []

    method agregarIntegrante(nuevoIntegrante) {integrantes.add(nuevoIntegrante)}

    method intentarConquistar(otraArea) {
        if (self.poderOfensivoTotal()> otraArea.poderDefensivo()) {
            otraArea.cambiarColonia(self)
        } else {
            integrantes.forEach({i => i.perderPoderMagico()})
        }
    }

    method poderOfensivoTotal() = integrantes.sum({i => i.poderOfensivo()})

    method cantidadCriaturasFormidables() = integrantes.count({i => i.esFormidable()})
}