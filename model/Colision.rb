require_relative '../model/ObjetoMuertoException'

class Colision

  def initialize(objeto_colisionador, objeto_colisionado)

    #Se lanzara una Excepcion si uno o los dos objetos espaciales esta/n muertos.
    if (!objeto_colisionador.esta_vivo || !objeto_colisionado.esta_vivo)
      raise ObjetoMuertoException.new
    end

    @objeto_colisionador = objeto_colisionador
    @objeto_colisionado = objeto_colisionado

  end

  def aplicar_efectos

    colisionadores = [@objeto_colisionador, @objeto_colisionado]

    #Se clona al objeto colisionador ya que puede necesitarse su estado previo para aplicar el efecto al objeto colisionado.
    colisionador_clonado = @objeto_colisionador.clone
    #

    efecto_del_colisionador = @objeto_colisionador.get_efecto_sufrido(@objeto_colisionado)
    efecto_del_colisionador.aplicar(@objeto_colisionador, @objeto_colisionado)

    efecto_del_colisionado = @objeto_colisionado.get_efecto_sufrido(@objeto_colisionador)
    efecto_del_colisionado.aplicar(@objeto_colisionado, colisionador_clonado)

  end

end