class Efecto

  #El nombre dato_requerido considero que es poco claro, pero realmente no pude encontrar otro que generalice mejor.
  #Cada efecto recibe un solo dato que puede ser desde un porcentaje (Negativo o positivo) hasta un numero entero.
  #Como los tipos de datos pueden variar, me cuesta encontrarle un nombre a la variable que generalice a todos ellos.
  def initialize(*dato_requerido)
    @dato_requerido = dato_requerido[0]
  end
  #

  def aplicar(*objeto_espacial) end

end