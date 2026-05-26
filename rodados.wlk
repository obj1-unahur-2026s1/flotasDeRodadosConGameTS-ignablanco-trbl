class Corsa{
    var color

    method color() = color
    method capacidad() = 4
    method velocidad() = 150
    method peso() = 1300
    method pintarDe(unColor) {color = unColor}
}

class Kwid{
    var tieneTanqueAdicional

    method capacidad() = if(tieneTanqueAdicional) 3 else 4
    method velocidad() = if(tieneTanqueAdicional) 110 else 120
    method peso() = 1200 + if(tieneTanqueAdicional) 150 else 0
    method color() = "azul"
    method ponerTanqueAdicional() {tieneTanqueAdicional = true}
    method sacarTanqueAdicional() {tieneTanqueAdicional = false}
}

object trafic{
    var interior = comodo
    var motor = pulenta

    method cambiarInterior(unInterior) = {}
    method cambiarMotor(unMotor) = {}
    method color() = "blanco"
    method peso() = interior.peso()
    method velocidad() = motor.velocidad()
    method capacidad() = interior.capacidad()
}

object comodo {
    method capacidad() = 5
    method peso() = 700
}

object pulenta {
    method peso() = 800
    method velocidad() = 130
}

object polular {
    method capacidad() = 12
    method peso() = 1000
}

object bataton {
    method peso() = 500
    method velocidad() = 80
}

class autoEspecial {
    const property capacidad
    const property peso
    const property velocidad
    var color
    method pintarDe(unColor) {color = unColor}
}

class Dependencia {
    const flota = []
    const empleados = []

    method agregarAFlota(rodado) {flota.add(rodado)}
    method quitarDeFlota(rodado) {flota.remove(rodado)}
    method pesoTotalFlota(){
        return flota.sum({r=>r.peso()})
    }
    method estaBienEquipada() {
        return flota.size() > 3 && self.todoPuedenIrA(100)
    }
    method todoPuedenIrA(velocidad) {
        return flota.all({r=>r.velocidad() >= velocidad})
    }
    method capacidadTotalEnColor(color) {
        return self.rodadosDelColor(color).sum({r=>r.capacidad()})
    }
    method rodadosDelColor(color) {
        return flota.filter({r=>r.color() == color})
    }
    method colorDelRodadoMasRapido() {
        return self.rodadoMasRapido().color()
    }
    method rodadoMasRapido() = flota.max({r=>r.velocidad()})
    method capacidadFaltante() {
        return (empleados - self.capacidadDeFlota().max(0))
    }
    method capacidadDeFlota() {
        return flota.sum({f=>f.capacidad()})
    }
}








































































