require_relative '../model/Efecto'

class EfectoDestructivo < Efecto

  #El Efecto Destructivo disminuye la cantidad de vida de un objeto en una cantidad determinada por vida_a_bajar.
  def initialize(vida_a_bajar)
    super(vida_a_bajar)	
  end

  def aplicar(*objeto_espacial)

    objeto_espacial = objeto_espacial[0]

    objeto_espacial.vida -= @dato_requerido
    objeto_espacial.actualizar_estado

  end

end