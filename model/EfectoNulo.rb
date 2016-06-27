require_relative '../model/Efecto'

#Esta clase no tiene comportamiento, y soy consciente de que esta mal colocar una clase que no hace nada.
#Pero no solo decidi dejar el Efecto Nulo porque forma parte del dominio del problema, sino porque da mas claridad al codigo.
class EfectoNulo < Efecto

  #El Efecto Nulo no altera el estado de un objeto. Deja al objeto con su estado tal y como esta.
  def aplicar(*objeto_espacial)
    #Vacio.
  end

end