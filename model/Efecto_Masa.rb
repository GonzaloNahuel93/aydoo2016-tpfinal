class Efecto_Masa

  def initialize(porcentaje)
    @porcentaje = porcentaje
  end

  def aplicar(primer_objeto_espacial, segundo_objeto_espacial)

    primer_objeto_espacial.masa += (segundo_objeto_espacial.masa * @porcentaje)
    primer_objeto_espacial.actualizar_estado

  end

end