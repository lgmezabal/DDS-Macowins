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
     // uso super para tomar el valor de importe original
   return super() + coeficienteTarjeta * cantidadCuotas + 0.01 * super()  // segundo super es para el 0.01 * el importe de la compra
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