require 'rspec'
require 'spec_helper'
require_relative '../model/EfectoDestructivo'
require_relative '../model/Nave'
require_relative '../model/Misil'
require_relative '../model/Bomba'
require_relative '../model/Asteroide'
require_relative '../model/Estrella'

describe 'EfectoDestructivo' do

  it 'Se verifica que un Efecto Destructivo altere correctamente la vida de una Nave' do
    efecto_destructivo = EfectoDestructivo.new(200)
    nave = Nave.new(100,100)

    efecto_destructivo.aplicar(nave)

    #Vida actualizada de la nave
    expect(nave.vida).to eq 0
  end

  it 'Se verifica que un Efecto Destructivo altere correctamente la vida de un Misil' do
    efecto_destructivo = EfectoDestructivo.new(10)
    misil = Misil.new(100,100)

    efecto_destructivo.aplicar(misil)

    #Vida actualizada del misil
    expect(misil.vida).to eq 90
  end

  it 'Se verifica que un Efecto Destructivo altere correctamente la vida de una Bomba' do
    efecto_destructivo = EfectoDestructivo.new(550)
    bomba = Bomba.new(1000,1000)

    efecto_destructivo.aplicar(bomba)

    #Vida actualizada de la bomba
    expect(bomba.vida).to eq 450
  end

  it 'Se verifica que un Efecto Destructivo altere correctamente la vida de un Asteroide' do
    efecto_destructivo = EfectoDestructivo.new(340)
    asteroide = Asteroide.new(400,400)

    efecto_destructivo.aplicar(asteroide)

    #Vida actualizada del asteroide
    expect(asteroide.vida).to eq 60
  end

  it 'Se verifica que un Efecto Destructivo altere correctamente la vida de una Estrella' do
    efecto_destructivo = EfectoDestructivo.new(180)
    estrella = Estrella.new(185,200)

    efecto_destructivo.aplicar(estrella)

    #Vida actualizada de la estrella
    expect(estrella.vida).to eq 5
  end

end