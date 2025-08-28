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
    var sueldo = 15000

    method sueldo() = sueldo
    method deuda() = deuda
    method dinero() = dinero

    method cambiarSueldo(monto) {
        sueldo = monto
    }

    method cobrarSueldo() {
        if (deuda == 0) {
            dinero += sueldo
        } else {
            deuda += sueldo
        }
        if (deuda > 0) {
            dinero = deuda
            deuda = 0
        }
    }

    method gastar(monto) {
        var montoResultante = monto
        if (dinero > monto) {
            dinero -= monto
        } else if (dinero > 0 && dinero < monto) {
            montoResultante = monto - dinero
            dinero = 0
            deuda += montoResultante
        } else {
            deuda += monto
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

    method cargarEmpanadas(cantidad) {
        empanadasVendidas = empanadasVendidas + cantidad
    }
}