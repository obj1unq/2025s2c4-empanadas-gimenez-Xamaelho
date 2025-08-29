object gimenez {
    var fondoSueldo = 300000

    method fondoSueldo() = fondoSueldo    
    method pagarEmpleado(empleado) {
        fondoSueldo = fondoSueldo - empleado.sueldo()
        empleado.cobrarSueldo()
    }
}

object galvan {
    var dinero = 0
    var deuda = 0
    var property sueldo = 15000 
    // se puede hacer con var property para que los metodos getter y setter se llamen igual

    method deuda() = deuda
    method dinero() = dinero

    method sueldo(monto) {
        sueldo = monto
    }

    method cobrarSueldo() {
        var cobro = sueldo
        if (deuda == 0) {
            dinero += cobro
        } else if (deuda > sueldo){
            deuda -= sueldo
        } else {
            cobro -= deuda
            deuda = 0
            dinero += cobro
        }
    }

    method gastar(monto) {
        var montoResultante = monto
        if (dinero > monto) {
            dinero -= monto
        } else if (dinero < monto) {
            montoResultante = monto - dinero
            dinero = 0
            deuda += montoResultante
        }
    }

}

object baigorria {
    var empanadasVendidas = 0
    var totalGanado = 0
    const valorEmpanada = 15

    method totalCobrado() = totalGanado
    method sueldo() = empanadasVendidas * valorEmpanada

    method cobrarSueldo() {
        totalGanado = totalGanado + self.sueldo()
        empanadasVendidas = 0
    }

    method vender(cantidad) {
        empanadasVendidas = empanadasVendidas + cantidad
    }
}