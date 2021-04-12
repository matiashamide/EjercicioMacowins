Class Prenda{
    var estado = Estado
    const nombre = String
    var precioInicial = Int

    method precioFinal(){
      return   estado.calculoDePrecio(precio)
    }
}

class pantalon inherits Prenda{

}

class camisa inherits Prenda{
    
}

class saco inherits Prenda{
    
}

class Estado{

    method calculoDePrecio(valor){
        return valor
    }
    
}

class nuevo inherits Estado{

}

class promocion inherits Estado{

    var valorFijo = Int

    override method calculoDePrecio(valor){
        return valor - valorFijo
    }
}

class liquidacion inherits Estado{

    override method calculoDePrecio(valor){
        return valor / /2 
    }

}

class Venta{
    const fecha = Int
    const prendasVendidas = [(Prenda,Int)]
    const formaDePago = MetodoDePago

    method precioFinal(){
        return formaDePago.calculoDePrecioFinal(sumList(forEach((prenda,cantidad) => return prenda.precioFinal * cantidad )))
    }

}

class MetodoDePago{
    method calculoDePrecioFinal(valor){
        return valor
    }

}

class efectivo inherits MetodoDePago{

}

class Tarjeta inherits MetodoDePago{

    var cuotas= Int
    const coeficienteFijo = Int

    override calculoDePrecioFinal(valor){
        return cuotas * coeficienteFijo + 0.01 * valor
    }
}

class Dia{
    Const fecha = Int
    const ventas = [Venta]
    
    method gananciaDelDia(){
        return sumlist(forEach(venta => venta.precioFinal()))
    }
}