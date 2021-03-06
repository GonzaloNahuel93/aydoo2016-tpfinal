require 'rspec'
require 'spec_helper'
require_relative '../model/EfectoDestructivoPorcentual'
require_relative '../model/Nave'
require_relative '../model/Misil'
require_relative '../model/Bomba'
require_relative '../model/Asteroide'
require_relative '../model/Estrella'

describe 'EfectoDestructivoPorcentual' do

  it 'Se verifica que un Efecto Destructivo Porcentual altere correctamente la vida de una Nave' do
    efecto_destructivo_porcentual = EfectoDestructivoPorcentual.new(0.5)
    nave = Nave.new(100,100)

    efecto_destructivo_porcentual.aplicar(nave)

    #Vida actualizada de la nave
    expect(nave.vida).to eq 50
  end

  it 'Se verifica que un Efecto Destructivo Porcentual altere correctamente la vida de un Misil' do
    efecto_destructivo_porcentual = EfectoDestructivoPorcentual.new(0.2)
    misil = Misil.new(1000,1000)

    efecto_destructivo_porcentual.aplicar(misil)

    #Vida actualizada del misil
    expect(misil.vida).to eq 800
  end

  it 'Se verifica que un Efecto Destructivo Porcentual altere correctamente la vida de una Bomba' do
    efecto_destructivo_porcentual = EfectoDestructivoPorcentual.new(0.1)
    bomba = Bomba.new(500,500)

    efecto_destructivo_porcentual.aplicar(bomba)

    #Vida actualizada de la bomba
    expect(bomba.vida).to eq 450
  end

  it 'Se verifica que un Efecto Destructivo Porcentual altere correctamente la vida de un Asteroide' do
    efecto_destructivo_porcentual = EfectoDestructivoPorcentual.new(0.25)
    asteroide = Asteroide.new(1500,1500)

    efecto_destructivo_porcentual.aplicar(asteroide)

    #Vida actualizada del asteroide
    expect(asteroide.vida).to eq 1125
  end

  it 'Se verifica que un Efecto Destructivo Porcentual altere correctamente la vida de una Estrella' do
    efecto_destructivo_porcentual = EfectoDestructivoPorcentual.new(0.9)
    estrella = Estrella.new(10,10)

    efecto_destructivo_porcentual.aplicar(estrella)

    #Vida actualizada de la estrella
    expect(estrella.vida).to eq 1
  end

end