class Efecto_Destructivo

  def initialize(vida_a_bajar)
    @vida_a_bajar = vida_a_bajar 	
  end

  def aplicar(colisionadores)

  	objeto_colisionador = colisionadores[0]
  	objeto_colisionador.vida -= @vida_a_bajar

  end

end