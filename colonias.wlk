class Colonia {
    const criaturas = []

    method poderOfensivo() = criaturas.map({c => c.poderOfensivo()}).sum()

    method poderDefensivo()

    method intentarAtacar(unaColonia) {
        
    }
}
class LosClaros inherits Colonia {
    override method poderDefensivo() = self.poderOfensivo() + 100
}

class LosCastillos inherits Colonia {
    override method poderDefensivo () = 200 * self.cantCriaturasFormidables()

    method cantCriaturasFormidables() = criaturas.count({c => c.esFormidable()})
}