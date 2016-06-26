require_relative '../model/ObjetoEspacial'
require_relative '../model/EfectoNulo'
require_relative '../model/EfectoDestructivo'
require_relative '../model/Colision'
require_relative '../model/Nave'
require_relative '../model/Bomba'
require_relative '../model/Asteroide'
require_relative '../model/Estrella'

class Misil < ObjetoEspacial

  def initialize(*parametros)

    super(*parametros)

    @colisiones = {
      Nave => EfectoDestructivo.new(100),
      Misil => EfectoDestructivo.new(100),
      Bomba => EfectoNulo.new,
      Asteroide => EfectoNulo.new,
      Estrella => EfectoNulo.new
    }

  end

end