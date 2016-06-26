class Objeto_Espacial

  attr_accessor :vida, :masa

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