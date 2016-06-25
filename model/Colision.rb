class Colision

  def initialize(objeto_colisionador, objeto_colisionado)
    @objeto_colisionador = objeto_colisionador
    @objeto_colisionado = objeto_colisionado	
  end

  def aplicar_efectos

    colisionadores = [@objeto_colisionador, @objeto_colisionado]

    #Se clona al colisionador ya que puede necesitarse su estado previo para aplicar el efecto al objeto colisionado.
    colisionador_clonado = @objeto_colisionador.clone
    #

    efecto_del_colisionador = @objeto_colisionador.get_efecto_sufrido(@objeto_colisionado)
    efecto_del_colisionador.aplicar(@objeto_colisionador, @objeto_colisionado)

    efecto_del_colisionado = @objeto_colisionado.get_efecto_sufrido(@objeto_colisionador)
    efecto_del_colisionado.aplicar(@objeto_colisionado, colisionador_clonado)

  end

end