class Efecto_Destructivo

  def initialize(vida_a_bajar)
    @vida_a_bajar = vida_a_bajar 	
  end

  def aplicar(primer_objeto_espacial, segundo_objeto_espacial)
  	primer_objeto_espacial.vida -= @vida_a_bajar
  end

end