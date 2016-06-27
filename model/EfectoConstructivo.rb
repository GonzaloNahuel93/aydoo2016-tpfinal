require_relative '../model/Efecto'

class EfectoConstructivo < Efecto

  def aplicar(*objeto_espacial)

    primer_objeto_espacial = objeto_espacial[0]
    segundo_objeto_espacial = objeto_espacial[1]

    primer_objeto_espacial.vida += segundo_objeto_espacial.vida
    primer_objeto_espacial.actualizar_estado

  end

end