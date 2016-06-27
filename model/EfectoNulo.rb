require_relative '../model/Efecto'

class EfectoNulo < Efecto

  def aplicar(*objeto_espacial)
    #Este Efecto no hace nada. Deja al Objeto Espacial tal y como esta.
  end

end