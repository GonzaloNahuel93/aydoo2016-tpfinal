class ObjetoEspacial

  attr_accessor :vida, :masa
  attr_reader :esta_vivo, :colisiones

  def initialize(*parametros)

    #Este bloque if else no me gusta mucho, pero sinceramente no encontre otra manera de solucionar la situacion:
    #Se intenta distinguir si vienen dos parametros (Lo cual indica que se inserta una vida y masa determinadas).
    #O si no viene ningun parametro hay que inicializar el Objeto Espacial con su vida y masa por default (100 para c/u).
    if(parametros.length == 2)

      @vida = parametros[0]
      @masa = parametros[1]
      @esta_vivo = true
      self.actualizar_estado

    else

      @vida = 100
      @masa = 100
      @esta_vivo = true

    end
    #

  end

  def colisionar_con(objeto_espacial)

    colision = Colision.new(self, objeto_espacial)
    colision.aplicar_efectos

  end

  def get_efecto_sufrido(objeto_espacial)
    @colisiones[objeto_espacial.class]
  end

  def actualizar_estado

    if(@vida <= 0)

      @vida = 0
      @esta_vivo = false

    end

    if(@masa <= 0)

      @masa = 0
      @esta_vivo = false

    end

  end

end