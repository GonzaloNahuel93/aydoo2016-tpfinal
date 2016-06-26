class Efecto_Destructivo_Porcentual

  def initialize(porcentaje_a_bajar)
    @porcentaje_a_bajar = porcentaje_a_bajar 	
  end

  def aplicar(primer_objeto_espacial, segundo_objeto_espacial)

    primer_objeto_espacial.vida -= (primer_objeto_espacial.vida * @porcentaje_a_bajar)
    primer_objeto_espacial.actualizar_estado

  end

end