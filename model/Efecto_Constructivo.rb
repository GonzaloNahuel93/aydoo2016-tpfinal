class Efecto_Constructivo

  def aplicar(primer_objeto_espacial, segundo_objeto_espacial)

    primer_objeto_espacial.vida += segundo_objeto_espacial.vida
    primer_objeto_espacial.actualizar_datos

  end

end