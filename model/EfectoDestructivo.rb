require_relative '../model/Efecto'

class EfectoDestructivo < Efecto

  def initialize(vida_a_bajar)
    super(vida_a_bajar)	
  end

  def aplicar(*objeto_espacial)

    objeto_espacial = objeto_espacial[0]

    objeto_espacial.vida -= @dato_requerido
    objeto_espacial.actualizar_estado

  end

end