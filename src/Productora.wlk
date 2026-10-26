import src.Asistente.Asistente
import src.Bandas.Banda.Banda

object productora {
    const asistentes = []
    const bandas = []
    var property impuesto = 0

    // item 1
    method gananciaTotal() = self.calcularGananciaBruta() - self.calcularPresupuestosTotales()

    method calcularGananciaBruta () {
        return asistentes.map( { asistente => asistente.calcularGastosHistoricos() } ).sum()
    }

    method calcularPresupuestosTotales() {
        return bandas.map( { banda => banda.presupuesto() } ).sum()
    }
    // item 1 fin

    // item 2
    method cantidadEntradasVendidas() = self.entradasVendidasTotales().size()

    // item 3
    method bandaMasPopular() {
        return bandas.max( { banda => self.entradasVendidasDeBanda(banda) } )
    }

    method entradasVendidasDeBanda(unaBanda) {
        return self.entradasVendidasTotales().filter( { entrada => entrada.banda() == unaBanda } ).size()
    }

    method entradasVendidasTotales() {
        return asistentes.map( { asistente => asistente.historialEntradas() } ).flatten()
    }
    // item 3 fin

    method bonificarVip() {
        asistentes.forEach( { asistente => asistente.bonificarAbono()} )
    }

    method agregarAsistente(asistente) {
        asistentes.add(asistente)
    }

    method agregarBanda(banda) {
        bandas.add(banda)
    }
}