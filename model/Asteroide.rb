require_relative '../model/Efecto_Nulo'
require_relative '../model/Efecto_Masa'

require_relative '../model/Colision'
require_relative '../model/Nave'
require_relative '../model/Misil'
require_relative '../model/Bomba'
require_relative '../model/Estrella'

class Asteroide
  
  attr_accessor :vida, :masa
  @vida
  @masa

  def initialize(vida, masa)

    @vida = vida
    @masa = masa

    @colisiones = {
  	  Nave => Efecto_Masa.new(0.1,-0.5),
      Misil => Efecto_Nulo.new,
      Bomba => Efecto_Nulo.new,
      Asteroide => Efecto_Nulo.new,
      Estrella => Efecto_Nulo.new
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