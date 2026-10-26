import src.Bandas.Banda.Banda

class BandaIndie inherits Banda {
    var cantidadInstrumentos

    override method popularidad () = 3.14 * self.largoNombre()
    override method gastoExtra() = cantidadInstrumentos * 500
    method largoNombre() = nombre.size()
}