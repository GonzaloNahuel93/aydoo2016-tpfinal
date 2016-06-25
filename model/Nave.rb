require_relative '../model/Objeto_Espacial'
require_relative '../model/Efecto_Destructivo'
require_relative '../model/Efecto_Constructivo'
require_relative '../model/Efecto_Masa'
require_relative '../model/Colision'
require_relative '../model/Misil'
require_relative '../model/Bomba'
require_relative '../model/Asteroide'
require_relative '../model/Estrella'

class Nave < Objeto_Espacial

  def initialize(vida, masa)

    @vida = vida
    @masa = masa
    @esta_vivo = true

    @colisiones = {
  	  Nave => Efecto_Destructivo.new(100),
      Misil => Efecto_Destructivo.new(80),
      Bomba => Efecto_Destructivo.new(50),
      Asteroide => Efecto_Masa.new(-0.5),
      Estrella => Efecto_Constructivo.new
  	}

  end

end