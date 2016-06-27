require_relative '../model/EfectoDestructivo'

class EfectoDestructivoPorcentual < EfectoDestructivo

  def initialize(porcentaje_a_bajar)
    super(porcentaje_a_bajar)
  end

  def aplicar(*objeto_espacial)

    objeto_espacial = objeto_espacial[0]

    objeto_espacial.vida -= (objeto_espacial.vida * @dato_requerido)
    objeto_espacial.actualizar_estado

  end

end