require_relative '../model/Objeto_Espacial'
require_relative '../model/Efecto_Nulo'
require_relative '../model/Efecto_Destructivo'
require_relative '../model/Colision'
require_relative '../model/Nave'
require_relative '../model/Bomba'
require_relative '../model/Asteroide'
require_relative '../model/Estrella'

class Misil < Objeto_Espacial

  def initialize(vida, masa)

    @vida = vida
    @masa = masa
    @esta_vivo = true

    @colisiones = {
      Nave => Efecto_Destructivo.new(100),
      Misil => Efecto_Destructivo.new(100),
      Bomba => Efecto_Nulo.new,
      Asteroide => Efecto_Nulo.new,
      Estrella => Efecto_Nulo.new
    }

  end

end