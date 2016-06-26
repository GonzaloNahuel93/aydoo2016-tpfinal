require_relative '../model/Objeto_Espacial'
require_relative '../model/Efecto_Nulo'
require_relative '../model/Efecto_Masa'
require_relative '../model/Colision'
require_relative '../model/Nave'
require_relative '../model/Misil'
require_relative '../model/Bomba'
require_relative '../model/Estrella'

class Asteroide < Objeto_Espacial

  def initialize(*parametros)

    super(*parametros)

    @colisiones = {
      Nave => Efecto_Masa.new(0.1),
      Misil => Efecto_Nulo.new,
      Bomba => Efecto_Nulo.new,
      Asteroide => Efecto_Nulo.new,
      Estrella => Efecto_Nulo.new
    }

  end

end