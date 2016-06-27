class ObjetoMuertoException < Exception

  def initialize(msg='Uno de los objetos esta muerto y no puede participar de la colision.')
    super
  end

end