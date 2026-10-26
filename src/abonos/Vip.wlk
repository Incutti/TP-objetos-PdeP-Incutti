class Vip {
    var porcentaje
    method aplicarDescuento(precio) = precio - precio*porcentaje/100
    method bonificar() {
        porcentaje += 1
    }
}