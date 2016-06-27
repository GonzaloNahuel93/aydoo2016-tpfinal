require_relative '../model/ObjetoEspacial'
require_relative '../model/EfectoDestructivo'
require_relative '../model/EfectoDestructivoPorcentual'
require_relative '../model/Colision'
require_relative '../model/Nave'
require_relative '../model/Misil'
require_relative '../model/Asteroide'
require_relative '../model/Estrella'

class Bomba < ObjetoEspacial

  def initialize(*parametros)
    super(*parametros)

    @colisiones = {
      Nave => EfectoDestructivo.new(100),
      Misil => EfectoDestructivoPorcentual.new(0.5),
      Bomba => EfectoDestructivo.new(100),
      Asteroide => EfectoDestructivoPorcentual.new(1.0),
      Estrella => EfectoDestructivo.new(100)
    }
  end

end