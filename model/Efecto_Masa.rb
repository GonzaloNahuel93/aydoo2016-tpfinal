class Efecto_Masa

  def initialize(porcentaje_para_colisionador, porcentaje_para_colisionado)

    @porcentaje_para_colisionador = porcentaje_para_colisionador
    @porcentaje_para_colisionado = porcentaje_para_colisionado

  end

  def aplicar(objeto_colisionador, objeto_colisionado)
  	
  	#La masa del colisionador se sustituira primero, y el dato original de su masa se perdera. Por eso se guarda previamente.
  	auxiliar_masa_colisionador = objeto_colisionador.masa

  	#Se actualiza la masa del colisionador luego de la colision
  	objeto_colisionador.masa = objeto_colisionador.masa + (objeto_colisionado.masa * @porcentaje_para_colisionador)

  	#Se actualiza la masa del colisionado luego de la colision
  	objeto_colisionado.masa = objeto_colisionado.masa + (auxiliar_masa_colisionador * @porcentaje_para_colisionado)

  end

end