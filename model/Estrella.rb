require_relative '../model/ObjetoEspacial'
require_relative '../model/EfectoNulo'
require_relative '../model/EfectoDestructivoPorcentual'
require_relative '../model/Colision'
require_relative '../model/Nave'
require_relative '../model/Misil'
require_relative '../model/Bomba'
require_relative '../model/Asteroide'

class Estrella < ObjetoEspacial

  def initialize(*parametros)

    super(*parametros)

    @colisiones = {
      Nave => EfectoDestructivoPorcentual.new(1.0),
      Misil => EfectoNulo.new,
      Bomba => EfectoDestructivoPorcentual.new(1.0),
      Asteroide => EfectoDestructivoPorcentual.new(1.0),
      Estrella => EfectoDestructivoPorcentual.new(1.0)
    }

  end

end