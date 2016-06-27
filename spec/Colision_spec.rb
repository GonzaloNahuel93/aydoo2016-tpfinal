require 'rspec'
require 'spec_helper'
require_relative '../model/Colision'

describe 'Colision' do

  it 'Se verifica que se inicialice una Colision con objetos espaciales vivos' do
    primer_objeto_espacial = ObjetoEspacial.new
    segundo_objeto_espacial = ObjetoEspacial.new

    colision = Colision.new(primer_objeto_espacial, segundo_objeto_espacial)
  end

end