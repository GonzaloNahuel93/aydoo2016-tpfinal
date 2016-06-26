require 'rspec'
require 'spec_helper'
require_relative '../model/Efecto_Destructivo_Porcentual'
require_relative '../model/Nave'
require_relative '../model/Misil'
require_relative '../model/Bomba'
require_relative '../model/Asteroide'
require_relative '../model/Estrella'

describe 'Efecto_Destructivo_Porcentual' do

  it 'Se verifica que un Efecto Destructivo Porcentual altere correctamente la vida de una Nave' do
    efecto_destructivo_porcentual = Efecto_Destructivo_Porcentual.new(0.5)
    nave = Nave.new(100,100)

    efecto_destructivo_porcentual.aplicar(nave, nil)

    #Vida actualizada de la nave
    expect(nave.vida).to eq 50
  end

  it 'Se verifica que un Efecto Destructivo Porcentual altere correctamente la vida de un Misil' do
    efecto_destructivo_porcentual = Efecto_Destructivo_Porcentual.new(0.2)
    misil = Misil.new(1000,1000)

    efecto_destructivo_porcentual.aplicar(misil, nil)

    #Vida actualizada del misil
    expect(misil.vida).to eq 800
  end

end