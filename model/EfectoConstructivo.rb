require_relative '../model/Efecto'

class EfectoConstructivo < Efecto

  #El Efecto Constructivo incrementa las unidades de vida de un objeto en una cantidad igual a la vida de otro objeto.
  def aplicar(*objeto_espacial)

    primer_objeto_espacial = objeto_espacial[0]
    segundo_objeto_espacial = objeto_espacial[1]

    primer_objeto_espacial.vida += segundo_objeto_espacial.vida
    primer_objeto_espacial.actualizar_estado

  end

end