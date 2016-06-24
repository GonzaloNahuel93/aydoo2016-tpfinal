class Efecto_Destructivo_Porcentual

  def initialize(porcentaje_a_bajar)
    @porcentaje_a_bajar = porcentaje_a_bajar 	
  end

  def aplicar(colisionadores)

  	objeto_colisionador = colisionadores[0]
  	objeto_colisionador.vida -= objeto_colisionador.vida * @porcentaje_a_bajar

  end

end