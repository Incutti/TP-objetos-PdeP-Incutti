import src.Bandas.Banda.Banda

class BandaRock inherits Banda {
    var cantSolosGuitarra

    override method gastoExtra() = 10000
    override method popularidad() = cantSolosGuitarra * 100
}