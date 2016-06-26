require 'rspec'
require 'spec_helper'
require_relative '../model/Efecto_Constructivo'
require_relative '../model/Nave'
require_relative '../model/Misil'
require_relative '../model/Bomba'
require_relative '../model/Asteroide'
require_relative '../model/Estrella'

describe 'Efecto_Constructivo' do

  it 'Se verifica que un Efecto Constructivo altere correctamente la vida de una Nave en base a otra Nave' do
    efecto_constructivo = Efecto_Constructivo.new
    primera_nave = Nave.new(100,100)
    segunda_nave = Nave.new(200,200)

    #La primera_nave debe incrementar su vida en una cantidad de unidades igual a la vida de la segunda_nave
    efecto_constructivo.aplicar(primera_nave, segunda_nave)

    #Vida actualizada de la primera_nave
    expect(primera_nave.vida).to eq 300
  end

end