require_relative '../model/Objeto_Espacial'
require_relative '../model/Efecto_Nulo'
require_relative '../model/Efecto_Destructivo_Porcentual'
require_relative '../model/Colision'
require_relative '../model/Nave'
require_relative '../model/Misil'
require_relative '../model/Bomba'
require_relative '../model/Asteroide'

class Estrella < Objeto_Espacial

  def initialize(vida, masa)

    @vida = vida
    @masa = masa
    @esta_vivo = true

    @colisiones = {
      Nave => Efecto_Destructivo_Porcentual.new(1.0),
      Misil => Efecto_Nulo.new,
      Bomba => Efecto_Destructivo_Porcentual.new(1.0),
      Asteroide => Efecto_Destructivo_Porcentual.new(1.0),
      Estrella => Efecto_Destructivo_Porcentual.new(1.0)
    }

  end

end