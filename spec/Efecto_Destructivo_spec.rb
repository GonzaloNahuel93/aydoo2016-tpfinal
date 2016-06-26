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

  it 'Se verifica que un Efecto Destructivo altere correctamente la vida de un Misil' do
    efecto_destructivo = Efecto_Destructivo.new(10)
    misil = Misil.new(100,100)

    efecto_destructivo.aplicar(misil, nil)

    #Vida actualizada del misil
    expect(misil.vida).to eq 90
  end

  it 'Se verifica que un Efecto Destructivo altere correctamente la vida de una Bomba' do
    efecto_destructivo = Efecto_Destructivo.new(550)
    bomba = Bomba.new(1000,1000)

    efecto_destructivo.aplicar(bomba, nil)

    #Vida actualizada de la bomba
    expect(bomba.vida).to eq 450
  end

  it 'Se verifica que un Efecto Destructivo altere correctamente la vida de un Asteroide' do
    efecto_destructivo = Efecto_Destructivo.new(340)
    asteroide = Asteroide.new(400,400)

    efecto_destructivo.aplicar(asteroide, nil)

    #Vida actualizada del asteroide
    expect(asteroide.vida).to eq 60
  end

end