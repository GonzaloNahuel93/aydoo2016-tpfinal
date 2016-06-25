require_relative '../model/Efecto_Destructivo'
require_relative '../model/Efecto_Destructivo_Porcentual'

require_relative '../model/Colision'
require_relative '../model/Nave'
require_relative '../model/Misil'
require_relative '../model/Asteroide'
require_relative '../model/Estrella'

class Bomba
  
  attr_accessor :vida, :masa
  @vida
  @masa

  def initialize(vida, masa)

    @vida = vida
    @masa = masa

    @colisiones = {
  	  Nave => Efecto_Destructivo.new(100),
      Misil => Efecto_Destructivo_Porcentual.new(0.5),
      Bomba => Efecto_Destructivo.new(100),
      Asteroide => Efecto_Destructivo_Porcentual.new(1.0),
      Estrella => Efecto_Destructivo.new(100)
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