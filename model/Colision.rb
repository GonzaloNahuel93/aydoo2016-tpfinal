class Colision

  def initialize(objeto_colisionador, objeto_colisionado)
    @objeto_colisionador = objeto_colisionador
    @objeto_colisionado = objeto_colisionado	
  end

  def aplicar_efectos

    colisionadores = [@objeto_colisionador, @objeto_colisionado]

    colisionador_clonado = @objeto_colisionador.clone
    efecto_del_colisionador = @objeto_colisionador.get_efecto_sufrido(@objeto_colisionado)
    efecto_del_colisionador.aplicar(colisionadores)

    colisionadores[0] = colisionador_clonado
    efecto_del_colisionado = @objeto_colisionado.get_efecto_sufrido(@objeto_colisionador)
    efecto_del_colisionado.aplicar(colisionadores.reverse!)

  end

end