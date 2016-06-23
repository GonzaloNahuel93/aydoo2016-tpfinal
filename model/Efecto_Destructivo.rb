class Efecto_Destructivo

  def initialize(vida_a_bajar)
    @vida_a_bajar = vida_a_bajar 	
  end

  def aplicar(objeto_espacial)
  	objeto_espacial.vida -= @vida_a_bajar
  end

end