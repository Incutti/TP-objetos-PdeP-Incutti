import src.Bandas.Banda.Banda

class BandaTrap inherits Banda {
    var tieneHielo

    override method canon() = super() * self.popularidad()
    override method gastoExtra() = 0
    override method popularidad() {
        if (tieneHielo) return 1000
        else return 0 
    }
}