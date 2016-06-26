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

  it 'Se verifica que un Efecto Constructivo altere correctamente la vida de un Misil en base a una Estrella' do
    efecto_constructivo = Efecto_Constructivo.new
    misil = Misil.new(1000,1000)
    estrella = Estrella.new(1,100)

    #El misil debe incrementar su vida en una cantidad de unidades igual a la vida de la estrella
    efecto_constructivo.aplicar(misil, estrella)

    #Vida actualizada del misil
    expect(misil.vida).to eq 1001
  end

  it 'Se verifica que un Efecto Constructivo altere correctamente la vida de una Bomba en base a un Asteroide' do
    efecto_constructivo = Efecto_Constructivo.new
    bomba = Bomba.new(15,15)
    asteroide = Asteroide.new(15,500)

    #La bomba debe incrementar su vida en una cantidad de unidades igual a la vida del asteroide
    efecto_constructivo.aplicar(bomba, asteroide)

    #Vida actualizada de la bomba
    expect(bomba.vida).to eq 30
  end

end