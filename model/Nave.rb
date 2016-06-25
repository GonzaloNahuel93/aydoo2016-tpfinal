require_relative '../model/Efecto_Destructivo'
require_relative '../model/Efecto_Constructivo'
require_relative '../model/Efecto_Masa'

require_relative '../model/Colision'
require_relative '../model/Misil'
require_relative '../model/Bomba'
require_relative '../model/Asteroide'
require_relative '../model/Estrella'

class Nave

  attr_accessor :vida, :masa
  @vida
  @masa

  def initialize(vida, masa)

    @vida = vida
    @masa = masa

    @colisiones = {
  	  Nave => Efecto_Destructivo.new(100),
      Misil => Efecto_Destructivo.new(80),
      Bomba => Efecto_Destructivo.new(50),
      Asteroide => Efecto_Masa.new(-0.5),
      Estrella => Efecto_Constructivo.new
  	}

  end

  def colisionar_con(objeto_espacial)

    colision = Colision.new(self, objeto_espacial)
    colision.aplicar_efectos

  end

  def get_efecto_sufrido(objeto_espacial)
    @colisiones[objeto_espacial.class]
  end

end