require_relative '../model/Efecto'

class EfectoMasa < Efecto

  def initialize(porcentaje)
    super(porcentaje)
  end

  def aplicar(*objeto_espacial)

    primer_objeto_espacial = objeto_espacial[0]
    segundo_objeto_espacial = objeto_espacial[1]

    primer_objeto_espacial.masa += (segundo_objeto_espacial.masa * @dato_requerido)
    primer_objeto_espacial.actualizar_estado

  end

end