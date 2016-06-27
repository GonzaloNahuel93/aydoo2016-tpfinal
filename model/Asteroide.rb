require_relative '../model/ObjetoEspacial'
require_relative '../model/EfectoNulo'
require_relative '../model/EfectoMasa'
require_relative '../model/Colision'
require_relative '../model/Nave'
require_relative '../model/Misil'
require_relative '../model/Bomba'
require_relative '../model/Estrella'

class Asteroide < ObjetoEspacial

  def initialize(*parametros)
    super(*parametros)

    @colisiones = {
      Nave => EfectoMasa.new(0.1),
      Misil => EfectoNulo.new,
      Bomba => EfectoNulo.new,
      Asteroide => EfectoNulo.new,
      Estrella => EfectoNulo.new
    }
  end

end