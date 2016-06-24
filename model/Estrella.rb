require_relative '../model/Efecto_Destructivo_Porcentual'
require_relative '../model/Colision'
require_relative '../model/Nave'

class Estrella
  
  attr_accessor :vida, :masa
  @vida
  @masa

  def initialize(vida, masa)

    @vida = vida
    @masa = masa

    @colisiones = {
  	  Nave => Efecto_Destructivo_Porcentual.new(1.0)
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