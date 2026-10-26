import src.errores.NoTieneDineroDisponible.NoTieneDineroDisponibleException
import src.Entrada.Entrada
import src.abonos.*


class Asistente {
    const historialEntradas = []
    var property dineroDisponible
    var abono

    method comprarEntrada(entrada) {
        try {
            if(self.tieneSuficienteDinero()) {
                self.pagarEntrada(entrada.precioFinal())
                self.asistirA(entrada)
            } 
            else {
                throw new NoTieneDineroDisponibleException()
            }
        } 
        catch errorNoHayPlata : NoTieneDineroDisponibleException {
            console.println(errorNoHayPlata.message())
        }
    }

    method tieneSuficienteDinero() = dineroDisponible > 0 

    method pagarEntrada(precio) {
        dineroDisponible -= abono.aplicarDescuento(precio)
    }

    method asistirA(entrada) {
        historialEntradas.add(entrada)
    } 

    method consultarEntradasDelAnio () {
        return historialEntradas.filter( { entrada => entrada.esDelAnioPasado() } )
    }

    method consultarNombreDeBandas () = historialEntradas.map( { entrada => entrada.nombreDeBanda() } ).asSet()

    method calcularGastosHistoricos() {
        return historialEntradas.map( { entrada => entrada.precioFinal() } ).sum()
    }

    method historialEntradas() = historialEntradas

    method bonificarAbono() {
        abono.bonificar()
    }
}