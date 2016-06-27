require_relative '../model/EfectoDestructivo'

class EfectoDestructivoPorcentual < EfectoDestructivo

  #El Efecto Destructivo Porcentual disminuye la cantidad de vida de un objeto en un cierto porcentaje.
  #porcentaje_a_bajar puede variar desde 0 hasta 1.
  #Ejemplo: Si se quiere disminuir la cantidad de vida de un objeto en un 50%, el porcentaje_a_bajar sera 0.5 .
  def initialize(porcentaje_a_bajar)
    super(porcentaje_a_bajar)
  end

  def aplicar(*objeto_espacial)
    objeto_espacial = objeto_espacial[0]

    objeto_espacial.vida -= (objeto_espacial.vida * @dato_requerido)
    objeto_espacial.actualizar_estado
  end

end