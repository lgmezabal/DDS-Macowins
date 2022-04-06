class Prenda{
	const estado
	method precio(){
		return estado.precioFinal(precioInicial)
	}
}
object nuevo{
	method precioFinal(precioBase){
		return precioBase
	}
}
object promocion{
	method precioFinal(precioBase){
		return precioBase - valorFijoDescuento
	}
}
object liquidacion{
	method precioFinal(precioBase){
		return precioBase*0.5
	}
}
class Item{
  method importe(){
    return prenda.precio() * cantidad
    }
}

class Venta{
  const conjuntoItems
  method importe(){
    return items.sum(item -> item.importe())
    
    }
}
class  VentaTarjeta{
  const coeficienteTarjeta
  const cantidadCuotas
  method importe(){
    return coeficienteTarjeta * cantidadCuotas + 0.01 * super() + super()
	}
}
class Local{
	const ventasTotales =[]
  method gananciasDe(fecha){
    return ventasTotales.perteneceAFecha(fecha).sum(venta -> venta.importe())
    }
    method perteneceAFecha(fecha){
    	ventasTotales.filter(venta -> venta.esDeFecha(fecha))
    }
}