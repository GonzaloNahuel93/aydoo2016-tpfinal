require 'rspec'
require 'spec_helper'
require_relative '../model/Nave'
require_relative '../model/Misil'
require_relative '../model/Bomba'
require_relative '../model/Asteroide'
require_relative '../model/Estrella'

describe 'Efecto_Destructivo' do

  it 'Se verifica que un Efecto Destructivo altere correctamente la vida de una Nave' do
    efecto_destructivo = Efecto_Destructivo.new(200)
    nave = Nave.new(100,100)

    efecto_destructivo.aplicar(nave, nil)

    #Vida actualizada de la nave
    expect(nave.vida).to eq 0
  end

end