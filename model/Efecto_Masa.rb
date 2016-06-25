class Efecto_Masa

  def initialize(porcentaje)
    @porcentaje = porcentaje
  end

  def aplicar(colisionadores)

    objeto_colisionador = colisionadores[0]
    objeto_colisionado = colisionadores[1]

  	objeto_colisionador.masa = objeto_colisionador.masa + (objeto_colisionado.masa * @porcentaje)

  end

end