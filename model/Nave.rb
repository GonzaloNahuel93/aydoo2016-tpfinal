require_relative '../model/ObjetoEspacial'
require_relative '../model/EfectoDestructivo'
require_relative '../model/EfectoConstructivo'
require_relative '../model/EfectoMasa'
require_relative '../model/Colision'
require_relative '../model/Misil'
require_relative '../model/Bomba'
require_relative '../model/Asteroide'
require_relative '../model/Estrella'

class Nave < ObjetoEspacial

  def initialize(*parametros)

    super(*parametros)

    @colisiones = {
      Nave => EfectoDestructivo.new(100),
      Misil => EfectoDestructivo.new(80),
      Bomba => EfectoDestructivo.new(50),
      Asteroide => EfectoMasa.new(-0.5),
      Estrella => EfectoConstructivo.new
    }

  end

end