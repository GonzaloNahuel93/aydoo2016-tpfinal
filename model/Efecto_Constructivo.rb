class Efecto_Constructivo
  
  def aplicar(colisionadores)
  	
  	objeto_colisionador = colisionadores[0]
  	objeto_colisionado = colisionadores[1]

  	objeto_colisionador.vida += objeto_colisionado.vida 

  end
  
end