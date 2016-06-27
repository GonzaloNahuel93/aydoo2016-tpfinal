require_relative '../model/Efecto'

class EfectoMasa < Efecto

  #El Efecto Masa aumenta o disminuye la cantidad de masa de un objeto en una cantidad proporcional a la masa de otro objeto.
  #Esto se determina mediante un porcentaje que puede variar de -1 a 1.
  #Ejemplo 01: Si un objeto debe aumentar su masa en una cantidad igual al 10% de la masa de otro objeto, porcentaje es 0.1 .
  #Ejemplo 02: Si un objeto debe disminuir su masa en una cantidad igual al 60% de la masa de otro objeto, porcentaje es -0.6 .
  def initialize(porcentaje)
    super(porcentaje)
  end

  def aplicar(*objeto_espacial)

    primer_objeto_espacial = objeto_espacial[0]
    segundo_objeto_espacial = objeto_espacial[1]

    primer_objeto_espacial.masa += (segundo_objeto_espacial.masa * @dato_requerido)
    primer_objeto_espacial.actualizar_estado

  end

end