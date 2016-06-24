class Colision

  def initialize(objeto_colisionador, objeto_colisionado)
    @objeto_colisionador = objeto_colisionador
    @objeto_colisionado = objeto_colisionado	
  end

  def aplicar_efectos

    efecto_del_colisionador = @objeto_colisionador.get_efecto_sufrido(@objeto_colisionado)

    #Este bloque if else se debe a que se debe distinguir si el efecto es o no un Efecto Masa.
    if efecto_del_colisionador.class != Efecto_Masa

      efecto_del_colisionador.aplicar(@objeto_colisionador)

      efecto_del_colisionado = @objeto_colisionado.get_efecto_sufrido(@objeto_colisionador)
      efecto_del_colisionado.aplicar(@objeto_colisionado)

    else

      #Si es un Efecto Masa debe aplicarse una vez. Ya que es un efecto que depende ESTRICTAMENTE de los dos colisionadores.
      efecto_del_colisionador.aplicar(@objeto_colisionador, @objeto_colisionado)

    end

  end

end