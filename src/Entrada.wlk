import src.Bandas.Banda.Banda
import src.Productora.productora


class Entrada {
    const property banda
    const fecha
    const precioBase

    method precioFinal() = precioBase + productora.impuesto()

    method esDelAnioPasado() = fecha.year() == new Date().year()-1

    method nombreDeBanda() = banda.nombre()
}